//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DiziYorum.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblYorum
    {
        public int yorumID { get; set; }
        public string kullaniciAd { get; set; }
        public string mail { get; set; }
        public string yorumIcerik { get; set; }
        public Nullable<int> yorumBlog { get; set; }
    
        public virtual tblBlog tblBlog { get; set; }
    }
}
