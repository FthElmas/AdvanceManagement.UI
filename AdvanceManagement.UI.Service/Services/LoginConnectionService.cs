using AdvanceManagement.API.DataTransfer.DataTransferObjects.Complex;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvanceRequestStatus;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTPageAuthorization;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUser;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTWorker;
using AdvanceManagement.UI.DataTransfer.DataTransferObjects.Complex;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.UI.Service.Services
{
    public class LoginConnectionService
    {
        HttpClient _client;

        public LoginConnectionService(HttpClient client)
        {
            _client = client;
        }

        public async Task<string> Login(UserDTO dto)
        {
            StringContent stringContent = new StringContent(JsonConvert.SerializeObject(dto));
            stringContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
            var value = await _client.PostAsync("login", stringContent);

            if (value.IsSuccessStatusCode)
            {
                var token = await value.Content.ReadAsStringAsync();
                return token;
            }

            return "";
        }

        public async Task<bool> Register(RegisterDTO register)
        {
            StringContent stringContent = new StringContent(JsonConvert.SerializeObject(register));
            stringContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
            var value = await _client.PostAsync("register", stringContent);

            if (value.IsSuccessStatusCode)
            {
                return true;
            }

            return false;
        }


        public async Task<List<PageAuthorizationSelectDTO>> GetAuthorization(string username)
        {

            var value = await _client.GetAsync($"Login/{username}");

            if (value.IsSuccessStatusCode)
            {
                return JsonConvert.DeserializeObject<List<PageAuthorizationSelectDTO>>(await value.Content.ReadAsStringAsync());
            }

            return null;
        }
    }
}
