//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class Bild
    {
        public int BildID { get; set; }
        public int AnvändareId { get; set; }
        public int ProfilID { get; set; }
    
        public virtual Användare Användare { get; set; }
        public virtual Profil Profil { get; set; }
    }
}
