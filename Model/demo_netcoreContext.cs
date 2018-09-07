using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace Model
{
    public partial class demo_netcoreContext : DbContext
    {
        public demo_netcoreContext()
        {
        }

        public demo_netcoreContext(DbContextOptions<demo_netcoreContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Company> Company { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            //if (!optionsBuilder.IsConfigured)
            //{
            //    //#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
            //    optionsBuilder.UseSqlServer("Server=.;Database=demo_netcore;User ID=sa;Password=pwd;");
            //}
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Company>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.AddTime).HasColumnType("datetime");

                entity.Property(e => e.Banner)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Color)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.Logo)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Phone)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Remark).IsUnicode(false);

                entity.Property(e => e.Smsallow).HasColumnName("SMSAllow");

                entity.Property(e => e.SystemCnName)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.SystemEnName)
                    .HasMaxLength(100)
                    .IsUnicode(false);
            });
        }
    }
}
