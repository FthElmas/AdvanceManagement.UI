using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvance;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTFinanceManager;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.UI.Service.Services
{
    public class FinanceManagerConnectionService
    {
        HttpClient _client;

        public FinanceManagerConnectionService(HttpClient client)
        {
            _client = client;
        }



        public async Task<bool> AddFinance(FinanceManagerAddDTO finance)
        {
            StringContent stringContent = new StringContent(JsonConvert.SerializeObject(finance));
            stringContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
            var value = await _client.PostAsync("addFinance", stringContent);

            if (value.IsSuccessStatusCode)
            {
                return true;
            }

            return false;
        }
    }
}
