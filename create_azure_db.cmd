.nuget\NuGet restore sync.today.sln
packages\sync.today.createdb.1.0.5541.18126\lib\net45\sync.today.createdb.exe "Data Source=kc8q88iui6.database.windows.net;Initial Catalog=sync.today.db.test;Integrated Security=False;User ID=sync.today;Password=Betpum57;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False"
tools\fnr\fnr.exe --cl --find "Server=(localdb)\ProjectsV12; Database=SyncToday2015.new; Trusted_Connection=True;" --replace "Data Source=kc8q88iui6.database.windows.net;Initial Catalog=sync.today.db.test;Integrated Security=False;User ID=sync.today;Password=Betpum57;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False" --dir "C:\projects\synctoday2015" --fileMask "*.config" --includeSubDirectories
