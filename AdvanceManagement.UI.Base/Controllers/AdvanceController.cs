using Microsoft.AspNetCore.Mvc;

namespace AdvanceManagement.UI.Base.Controllers
{
    public class AdvanceController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
