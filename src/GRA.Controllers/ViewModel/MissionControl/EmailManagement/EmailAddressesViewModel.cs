﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace GRA.Controllers.ViewModel.MissionControl.EmailManagement
{
    public class EmailAddressesViewModel
    {
        public IFormFile UploadedFile { get; set; }

        [Required(ErrorMessage = "Please select a source to download")]
        public SelectList SignUpSources { get; set; }

        public string SignUpSource { get; set; }
    }
}
