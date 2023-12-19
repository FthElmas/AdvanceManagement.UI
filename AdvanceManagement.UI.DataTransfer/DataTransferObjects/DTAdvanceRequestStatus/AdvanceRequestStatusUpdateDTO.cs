using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvance;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTApprovalStatus;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTFinanceManager;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTProject;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTTitle;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTWorker;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvanceRequestStatus
{
    public record AdvanceRequestStatusUpdateDTO
    {
        public int AdvanceRequestStatusID { get; set; }

        public string? StatusName { get; set; }


        public string? StatusDescription { get; set; }

        public int? ApprovingRejectedID { get; set; }

        public decimal? ApprovedAmount { get; set; }

        public DateTime? ProcessDate { get; set; }
        public bool? IsActive { get; set; }


        public int? ModifiedBy { get; set; }

        public DateTime? ModifiedDate { get; set; }




    }
}
