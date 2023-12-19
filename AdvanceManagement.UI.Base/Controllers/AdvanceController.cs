using AdvanceManagement.API.DataTransfer.DataTransferObjects.Complex;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvance;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvanceRequestStatus;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTFinanceManager;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTPaymentReceipt;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUser;
using AdvanceManagement.UI.Base.Extensions;
using AdvanceManagement.UI.DataTransfer.DataTransferObjects.Complex;
using AdvanceManagement.UI.Service.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace AdvanceManagement.UI.Base.Controllers
{
    public class AdvanceController(AdvanceConnectionService advanceService, ProjectConnectionService projectService, AdvanceRequestStatusConnectionService requestService, FinanceManagerConnectionService financeService, PaymentReceiptControllerService paymentService) : Controller
    {
        public async Task<IActionResult> PastAdvance()
        {
            var user = HttpContext.Session.GetSession<UserDTO>("info");
            var data = await advanceService.BringAll((int)user.WorkerID);
            return View(data);
        }

        [Authorize(Roles = "UnitManager, Director, GMY, GM")]
        [HttpGet]
        public async Task<IActionResult> ApproveAdvance(int advanceID, int requestID)
        {
            var advance = await advanceService.BringByAdvanceID(advanceID);

            var requests = await requestService.BringStatus(advanceID);

            var data = new ApproveAdvanceDTO
            {
                AdvanceRequestStatusID = requestID,
                Advance = advance,
                AdvanceRequestStatus = requests
            };

            return View(data);
        }

        [Authorize(Roles = "FinanceManager")]
        [HttpGet]
        public async Task<IActionResult> FinancePendingAdvance()
        {
            
            var data = await advanceService.BringAllForFinance();
            return View(data);
        }

        [Authorize(Roles = "FinanceManager")]
        [HttpGet]
        public async Task<IActionResult> FinanceAdvance(int advanceID)
        {
            var advance = await advanceService.BringByAdvanceID(advanceID);

            var requests = await requestService.BringStatus(advanceID);

            var data = new FinanceAdvanceDTO
            {
                Advance = advance,
                AdvanceRequestStatus = requests
            };

            return View(data);

        }

        [Authorize(Roles = "FinanceManager")]
        [HttpPost]
        public async Task<IActionResult> FinanceAdvance(int advanceID, DateTime payTime, DateTime? advanceTime)
        {
            var user = HttpContext.Session.GetSession<UserDTO>("info");
            var error = new ErrorDTO { StatusCode = 400, ErrorMessages = new List<string> { "Girilen Tarih avanstan önce olamaz" } };
            if (advanceTime > payTime)
                return new BadRequestObjectResult(error);
            var data = new FinanceManagerAddDTO
            {
                WorkerID = (int)user.WorkerID,
                AdvanceID = advanceID,
                DeterminedPaymentDate = payTime,
                IsActive = true
            };
            if(data != null)
            {
                await financeService.AddFinance(data);
                return RedirectToAction("FinancePendingAdvance");
            }
            return BadRequest();
        }

        [Authorize(Roles = "UnitManager, Director, GMY, GM")]
        public async Task<IActionResult> ApproveAdvance(bool isApproved, decimal approvedAmount, int requestID, decimal lastAmount)
        {
            var user = HttpContext.Session.GetSession<UserDTO>("info");
            var error = new ErrorDTO { StatusCode = 400, ErrorMessages = new List<string> { "Girilen Miktar önceki avans onaylamadan az olamaz" } };

            if (isApproved != true)
            {
                var data = new AdvanceRequestStatusUpdateDTO
                {
                    AdvanceRequestStatusID = requestID,
                    StatusName = "Reddedildi",
                    StatusDescription = user.WorkerName + " Reddetti",
                    ApprovingRejectedID = user.WorkerID,
                    ProcessDate = DateTime.Today,
                    ApprovedAmount = 0,
                    ModifiedBy = user.WorkerID,
                    ModifiedDate = DateTime.Today,
                    IsActive = true
                };
                await requestService.ApproveOrDeclineStatus(data);
                return RedirectToAction("PendingAdvance");
            }
            else if (isApproved && approvedAmount <= lastAmount)
            {
                var data = new AdvanceRequestStatusUpdateDTO
                {
                    AdvanceRequestStatusID = requestID,
                    StatusName = "Onaylandı",
                    StatusDescription = user.WorkerName + " Onayladı",
                    ApprovingRejectedID = user.WorkerID,
                    ProcessDate = DateTime.Today,
                    ModifiedBy = user.WorkerID,
                    ModifiedDate = DateTime.Today,
                    ApprovedAmount = approvedAmount,
                    IsActive = true
                };
                await requestService.ApproveOrDeclineStatus(data);
                return RedirectToAction("PendingAdvance");
            }
            else
                return new BadRequestObjectResult(error);
        }


        [Authorize(Roles = "UnitManager, Director, GMY, GM")]
        public async Task<IActionResult> PendingAdvance()
        {
            var user = HttpContext.Session.GetSession<UserDTO>("info");
            List<AdvanceRequestStatusSelectDTO> data;
            if(user.TitleID != 2)
            {
                data = await requestService.BringApproveStatus((int)user.TitleID);
            }
            else
            {
                data = await requestService.BringApproveUnitStatus((int)user.TitleID);
            }

            return View(data);
        }


        public async Task<IActionResult> AdvanceDetail(int advanceID)
        {
            var data = await requestService.BringStatus(advanceID);

            if (data != null)
                return View(data);

            return BadRequest();
        }

        [HttpGet]
        public async Task<IActionResult> AddAdvance()
        {
            var worker = HttpContext.Session.GetSession<UserDTO>("info");


            var projects = await projectService.BringProject((int)worker.WorkerID);
            var data = new AdvanceAddDTO
            {
                Projects = projects.Select(x => new SelectListItem
                {
                    Value = x.ProjectID.ToString(),
                    Text = x.ProjectName
                }).ToList()
            };
            return View(data);
        }


        [HttpPost]
        public async Task<IActionResult> AddAdvance(AdvanceAddDTO advance)
        {
            var worker = HttpContext.Session.GetSession<UserDTO>("info");
            advance.WorkerID = worker.WorkerID;
            var data = await advanceService.AddAdvance(advance);
            
            if(data)
            {
                return RedirectToAction("AddAdvance");
            }

            return new BadRequestObjectResult(new ErrorDTO {StatusCode = 400, ErrorMessages = new List<string> {"Zaten bu projede bir avans talebiniz mevcut"} });


        }


        [Authorize(Roles = "Accountant")]
        [HttpGet]
        public async Task<IActionResult> AccountantPendingAdvance()
        {
            var data = await advanceService.BringAllForAccountant();
            return View(data);
        }


        [Authorize(Roles = "Accountant")]
        [HttpGet]
        public async Task<IActionResult> AccountantAdvance(int advanceID)
        {
            var advance = await advanceService.BringByAdvanceID(advanceID);

            var requests = await requestService.BringStatus(advanceID);

            var data = new AccountantAdvanceDTO
            {
                Advance = advance,
                AdvanceRequestStatus = requests
            };

            return View(data);
        }


        [Authorize(Roles = "Accountant")]
        [HttpPost]
        public async Task<IActionResult> AccountantAdvance(int advanceID, string receiptDesc)
        {
            var data = new PaymentReceiptAddDTO
            {
                ReceiptDate = DateTime.Today,
                ReceiptDescription = receiptDesc,
                AdvanceID = advanceID,
                CreatedDate = DateTime.Today,
                IsActive = true
            };

            var value = await paymentService.AddPaymentReceipt(data);
            if (value)
                return RedirectToAction("AccountantPendingAdvance");
            else
                return BadRequest();
        }
    }
}
