using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvance;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvanceRequestStatus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.UI.DataTransfer.DataTransferObjects.Complex
{
    public class FinanceAdvanceDTO
    {
        public AdvanceSelectDTO Advance { get; set; }

        public List<AdvanceRequestStatusSelectDTO> AdvanceRequestStatus { get; set; }

       
    }
}
