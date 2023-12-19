using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvance;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTPageAuthorization;
using AdvanceManagement.UI.DataTransfer.DataTransferObjects.Complex;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.UI.Service.Services
{
    public class AdvanceConnectionService
    {
        HttpClient _client;

        public AdvanceConnectionService(HttpClient client)
        {
            _client = client;
        }


        public async Task<bool> AddAdvance(AdvanceAddDTO advance)
        {
            StringContent stringContent = new StringContent(JsonConvert.SerializeObject(advance));
            stringContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
            var donendeger = await _client.PostAsync("advanceRequest", stringContent);

            if (donendeger.IsSuccessStatusCode)
            {
                return true;
            }

            return false;
        }

        public async Task<List<AdvanceSelectDTO>> BringAll(int workerID)
        {
            var value = await _client.GetAsync($"Advance/{workerID}");

            if(value.IsSuccessStatusCode)
            {
                return JsonConvert.DeserializeObject<List<AdvanceSelectDTO>>(await value.Content.ReadAsStringAsync());
            }
            return null;
        }

        public async Task<AdvanceSelectDTO> BringByAdvanceID(int advanceID)
        {
            var value = await _client.GetAsync($"Advance/getWithAdvanceID/{advanceID}");

            if (value.IsSuccessStatusCode)
            {
                return JsonConvert.DeserializeObject<AdvanceSelectDTO>(await value.Content.ReadAsStringAsync());
            }
            return null;
        }

        public async Task<List<AdvanceSelectDTO>> BringAllForFinance()
        {
            var value = await _client.GetAsync("getForFinance");

            if (value.IsSuccessStatusCode)
            {
                return JsonConvert.DeserializeObject<List<AdvanceSelectDTO>>(await value.Content.ReadAsStringAsync());
            }
            return null;
        }


        public async Task<List<AdvanceSelectDTO>> BringAllForAccountant()
        {
            var value = await _client.GetAsync("getForAccountant");

            if (value.IsSuccessStatusCode)
            {
                return JsonConvert.DeserializeObject<List<AdvanceSelectDTO>>(await value.Content.ReadAsStringAsync());
            }
            return null;
        }
    }
}
