using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTProject;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.UI.Service.Services
{
    public class ProjectConnectionService
    {
        HttpClient _client;

        public ProjectConnectionService(HttpClient client)
        {
            _client = client;
        }


        public async Task<List<ProjectSelectDTO>> BringProject(int workerID)
        {
            var value = await _client.GetAsync($"Project/{workerID}");

            if (value.IsSuccessStatusCode)
            {

                return JsonConvert.DeserializeObject<List<ProjectSelectDTO>>(await value.Content.ReadAsStringAsync());
            }
            return null;
        }
    }
}
