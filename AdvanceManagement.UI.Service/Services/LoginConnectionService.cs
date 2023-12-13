using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUser;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTWorker;
using AdvanceManagement.UI.DataTransfer.DataTransferObjects.Complex;
using Newtonsoft.Json;
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

        public async Task<bool> Register(LoginDTO login)
        {
            StringContent stringContent = new StringContent(JsonConvert.SerializeObject(login));
            stringContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
            var donendeger = await _client.PostAsync("register", stringContent);

            if (donendeger.IsSuccessStatusCode)
            {
                return true;
            }

            return false;
        }
    }
}
