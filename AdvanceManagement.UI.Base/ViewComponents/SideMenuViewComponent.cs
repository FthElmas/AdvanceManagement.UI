using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUser;
using AdvanceManagement.UI.Base.Extensions;
using AdvanceManagement.UI.DataTransfer.DataTransferObjects.Complex;
using AdvanceManagement.UI.Service.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;


namespace AdvanceManagement.UI.Base.ViewComponents
{
    public class SideMenuViewComponent : ViewComponent
    {
        private readonly LoginConnectionService service;

        public SideMenuViewComponent(LoginConnectionService service)
        {
            this.service = service;
        }

        public async Task<IViewComponentResult> InvokeAsync()
        {
            var user = HttpContext.Session.GetSession<UserDTO>("info");

            var data = await service.GetAuthorization(user.Username);

            var pageData = new SideMenuDTO
            {
                PageAuthoriation = data,
                Rolename = user.RoleName,
                WorkerName = user.WorkerName
            };

            return View(pageData);
        }
    }
}
