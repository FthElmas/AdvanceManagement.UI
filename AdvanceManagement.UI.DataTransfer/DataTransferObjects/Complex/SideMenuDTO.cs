using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTPageAuthorization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.UI.DataTransfer.DataTransferObjects.Complex
{
    public class SideMenuDTO
    {
        public List<PageAuthorizationSelectDTO> PageAuthoriation { get; set; }

        public string WorkerName { get; set; }

        public string Rolename { get; set; }
    }
}
