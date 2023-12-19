using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUser;
using AdvanceManagement.UI.Base.Extensions;
using AdvanceManagement.UI.DataTransfer.DataTransferObjects.Complex;
using AdvanceManagement.UI.Service.Services;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Mvc;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
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
                HttpContext.Response.Cookies.Append("token", token, new CookieOptions { Expires = System.DateTimeOffset.Now.AddMinutes(20)});
                var handler = new JwtSecurityTokenHandler();
                var jsonToken = handler.ReadToken(token) as JwtSecurityToken;



                var user = new UserDTO
                {
                    Username = jsonToken.Claims.ToList()[0].Value,
                    RoleName = jsonToken.Claims.ToList()[1].Value,
                    TitleID = int.TryParse(jsonToken?.Claims.FirstOrDefault(claim => claim.Type == "TitleID")?.Value, out var titleID) ? titleID : (int?)null,
                    WorkerID = int.TryParse(jsonToken?.Claims.FirstOrDefault(claim => claim.Type == "WorkerID")?.Value, out var workerID) ? workerID : (int?)null,
                    WorkerName = jsonToken?.Claims.FirstOrDefault(claim => claim.Type == "WorkerName")?.Value
                };


                HttpContext.Session.SetSession<UserDTO>("info", user);


                var claims = new List<Claim>()
                {
                    new Claim(ClaimTypes.Name,user.Username),
                    new Claim(ClaimTypes.Role, user.RoleName),
                    new Claim("TitleID", user.TitleID.ToString()),
                    new Claim("WorkerID", user.WorkerID.ToString()),
                    new Claim("WorkerName", user.WorkerName)
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
            dto.UserAdd.IsActive = true;
            dto.Worker.IsActive = true;
            var value = await service.Register(new API.DataTransfer.DataTransferObjects.Complex.RegisterDTO {User = dto.UserAdd , Worker = dto.Worker});
            
            if (value)
            {
                return RedirectToAction("Index");
            }

            return View();
        }
    }
}
