using AdvanceManagement.API.DataTransfer.DataTransferObjects.Complex;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTPaymentReceipt;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.UI.Service.Services
{
    public class PaymentReceiptControllerService
    {
        HttpClient _client;

        public PaymentReceiptControllerService(HttpClient client)
        {
            _client = client;
        }


        public async Task<bool> AddPaymentReceipt(PaymentReceiptAddDTO receipt)
        {
            StringContent stringContent = new StringContent(JsonConvert.SerializeObject(receipt));
            stringContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
            var value = await _client.PostAsync("addPaymentReceipt", stringContent);

            if (value.IsSuccessStatusCode)
            {
                return true;
            }

            return false;
        }
    }
}
