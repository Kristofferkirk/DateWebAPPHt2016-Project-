using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace DatingWebbAPPHt2016.Models
{
    public class Profile
    {
        [Required]
        public int id { get; set; }
        [Required]
        public int användarId { get; set; }
        [Required]
        public string profileName { get; set; }
        [Required]
        public string söker { get; set; }
        [Required]
        public string sökbar { get; set; }
        public int BildId { get; set; }

        public virtual UserAccount Useraccount { get; set; }
    }
}