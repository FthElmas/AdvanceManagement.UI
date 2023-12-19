using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvance
{
    public record AdvanceUpdateDTO
    {
        public int AdvanceID { get; set; }

        public decimal AdvanceAmount { get; set; }

        public string AdvanceExplanation { get; set; }

        public int WorkerID { get; set; }


        public DateTime RequestDate { get; set; }

        public DateTime AmountPaymentDate { get; set; }

        public DateTime PaybackDate { get; set; }

        public int ProjectID { get; set; }


        public DateTime CreatedDate { get; set; }


        public bool IsActive { get; set; }
    }
}
