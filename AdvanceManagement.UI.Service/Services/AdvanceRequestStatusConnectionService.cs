using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvanceRequestStatus;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTProject;
using AdvanceManagement.UI.DataTransfer.DataTransferObjects.Complex;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Http.Headers;

namespace AdvanceManagement.UI.Service.Services
{
    public class AdvanceRequestStatusConnectionService
    {
        HttpClient _client;

        public AdvanceRequestStatusConnectionService(HttpClient client)
        {
            _client = client;
        }

        public async Task<List<AdvanceRequestStatusSelectDTO>> BringStatus(int advanceID)
        {
            var value = await _client.GetAsync($"AdvanceRequestStatus/{advanceID}");

            if (value.IsSuccessStatusCode)
            {

                return JsonConvert.DeserializeObject<List<AdvanceRequestStatusSelectDTO>>(await value.Content.ReadAsStringAsync());
            }
            return null;
        }


        public async Task<List<AdvanceRequestStatusSelectDTO>> BringApproveStatus(int titleID)
        {
            var value = await _client.GetAsync($"AdvanceRequestStatus/getAllWithTitle/{titleID}");

            if (value.IsSuccessStatusCode)
            {

                return JsonConvert.DeserializeObject<List<AdvanceRequestStatusSelectDTO>>(await value.Content.ReadAsStringAsync());
            }
            return null;
        }

        public async Task<List<AdvanceRequestStatusSelectDTO>> BringApproveUnitStatus(int titleID)
        {
            var value = await _client.GetAsync($"AdvanceRequestStatus/getAllForUnitManager/{titleID}");

            if (value.IsSuccessStatusCode)
            {

                return JsonConvert.DeserializeObject<List<AdvanceRequestStatusSelectDTO>>(await value.Content.ReadAsStringAsync());
            }
            return null;
        }

        public async Task<bool> ApproveOrDeclineStatus(AdvanceRequestStatusUpdateDTO request)
        {
            StringContent stringContent = new StringContent(JsonConvert.SerializeObject(request));
            stringContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
            var donendeger = await _client.PutAsync("updateAdvanceRequest", stringContent);

            if (donendeger.IsSuccessStatusCode)
            {
                return true;
            }

            return false;
        }

    }
}
