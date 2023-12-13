using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUser;
using AdvanceManagement.UI.DataTransfer.DataTransferObjects.Complex;
using AdvanceManagement.UI.Service.Services;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace AdvanceManagement.UI.Base.Controllers
{
    public class LoginController(LoginConnectionService service) : Controller
    {
        public IActionResult Index()
        {
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Login(LoginDTO dto)
        {
            var token = await service.Login(dto.User);
            if (token != "")
            {
                HttpContext.Response.Cookies.Append("token", token, new CookieOptions { Expires = System.DateTimeOffset.Now.AddMinutes(20),/* Domain = "APISample"*/ });



                var claims = new List<Claim>()
                {
                    new Claim(ClaimTypes.Name,dto.User.Username)
                };

                var userIdentity = new ClaimsIdentity(claims, "login");
                var userpri = new ClaimsPrincipal(userIdentity);

                await HttpContext.SignInAsync(userpri); 

        


                return RedirectToAction("Index", "Home");


            }
            return RedirectToAction("Index", "Login");
        }

        public IActionResult KayitOl()
        {
            return View(new UserDTO());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Register(LoginDTO dto)
        {
            var donendeger = await service.Register(dto);
            
            if (donendeger)
            {
                TempData["KullaniciDurumu"] = "Kullanıcı basariyla kayit edilmistir";
                return RedirectToAction("Giris");
            }

            return View();
        }
    }
}
