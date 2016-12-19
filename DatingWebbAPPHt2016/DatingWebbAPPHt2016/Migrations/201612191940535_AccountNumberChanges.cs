namespace DatingWebbAPPHt2016.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AccountNumberChanges : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.UserAccounts", "Anvnamn", c => c.String(nullable: false, maxLength: 8000, unicode: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.UserAccounts", "Anvnamn", c => c.String(nullable: false));
        }
    }
}
