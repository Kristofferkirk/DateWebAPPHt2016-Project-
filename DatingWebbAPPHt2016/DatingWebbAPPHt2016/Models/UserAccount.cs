using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace DatingWebbAPPHt2016.Models
{
    public class UserAccount
    {
        //Class for user account information, still needs to be configured
        public int Id { get; set; }

        [Required]
        [StringLength(10)]
        [Column(TypeName ="varchar")]
        [RegularExpression("^[0-9]{6,10}$", ErrorMessage = "Account # must be between 6 and 10 digits.")] // Checks if account number is between 6-10 digits
        [Display(Name="Användarnamn")]
        public string Anvnamn { get; set; }

        [Required]
        [Display(Name = "Förnamn")]
        public string Firstname { get; set; }

        [Required]
        [Display(Name = "Efternamn")]
        public string Lastname { get; set; }
        [Required]
        [Display(Name = "Stad")]
        public string city { get; set; }
        [Required]
        [Display(Name = "PersonNummer")]
        public string persNr { get; set; }
        public string Name
        {
            get
            {
                return string.Format("{0} {1}", this.Firstname, this.Lastname);
            }
        }
        public virtual ApplicationUser User { get; set; }
        

        [Required]
        public string ApplicationUserId { get; set; }
        public virtual ICollection<Profile> Profiles { get; set; } //Samling av profiler för att kolla igenom

    }
}