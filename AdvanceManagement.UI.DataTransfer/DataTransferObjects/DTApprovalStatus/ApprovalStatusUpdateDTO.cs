﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTApprovalStatus
{
    public record ApprovalStatusUpdateDTO
    {

        public int ApprovalStatusID { get; set; }


        public string ApprovalName { get; set; }

        public bool IsActive { get; set; }


        public int ModifiedBy { get; set; }


        public DateTime CreatedDate { get; set; }



        public DateTime ModifiedDate { get; set; }


        public int CreatedBy { get; set; }
    }
}
