﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class dbDiziYorumEntities : DbContext
    {
        public dbDiziYorumEntities()
            : base("name=dbDiziYorumEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<tblBlog> tblBlog { get; set; }
        public virtual DbSet<tblHakkimizda> tblHakkimizda { get; set; }
        public virtual DbSet<tblIletisim> tblIletisim { get; set; }
        public virtual DbSet<tblKategori> tblKategori { get; set; }
        public virtual DbSet<tblTur> tblTur { get; set; }
        public virtual DbSet<tblYorum> tblYorum { get; set; }
        public virtual DbSet<tblAdmin> tblAdmin { get; set; }
    }
}
