Install-package Microsoft.EntityFrameworkCore

Install-package Microsoft.EntityFrameworkCore.SqlServer

Install-Package Microsoft.EntityFrameworkCore.Tools

Install-Package Microsoft.EntityFrameworkCore.SqlServer.Design

Scaffold-DbContext "Server=.;Database=DBName;User ID=sa;Password=pwd;" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models

Scaffold-DbContext -Force "Server=.;Database=DBName;User Id=root;Password=pwd;" -Provider "Pomelo.EntityFrameworkCore.MySql"
