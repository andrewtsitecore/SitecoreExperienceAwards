cd /d %0\..
SET Prefix=develop
SET RootFolder=C:\Websites\%Prefix%.officecore.net
SET UnZip=..\7zip\7z.exe x

iisreset /stop

::DO MONGO
if exist MongoDatabases rd /s /q MongoDatabases
%UnZip% MongoDatabases.zip

c:\mongodb\bin\mongo %Prefix%_officecore_net_analytics --eval "db.dropDatabase()"
c:\mongodb\bin\mongo %Prefix%_officecore_net_ecm_dispatch --eval "db.dropDatabase()"
c:\mongodb\bin\mongo %Prefix%_officecore_net_tracking_contact --eval "db.dropDatabase()"
c:\mongodb\bin\mongo %Prefix%_officecore_net_tracking_history --eval "db.dropDatabase()"
c:\mongodb\bin\mongo %Prefix%_officecore_net_tracking_live --eval "db.dropDatabase()"

c:\mongodb\bin\mongorestore --drop --db %Prefix%_officecore_net_analytics MongoDatabases\analytics
c:\mongodb\bin\mongorestore --drop --db %Prefix%_officecore_net_ecm_dispatch MongoDatabases\ecm_dispatch
c:\mongodb\bin\mongorestore --drop --db %Prefix%_officecore_net_tracking_contact MongoDatabases\tracking_contact
c:\mongodb\bin\mongorestore --drop --db %Prefix%_officecore_net_tracking_history MongoDatabases\tracking_history
c:\mongodb\bin\mongorestore --drop --db %Prefix%_officecore_net_tracking_live MongoDatabases\tracking_live
rd /s /q MongoDatabases

::DO LUCENE
if exist sitecore_analytics_index rd /s /q sitecore_analytics_index
%UnZip% sitecore_analytics_index.zip
robocopy sitecore_analytics_index %RootFolder%\Data\indexes\sitecore_analytics_index /mir /Z /nfl /ndl
rd /s /q sitecore_analytics_index

::DO SQL
if exist reporting.bak del reporting.bak
%UnZip% SitecoreReporting.zip
::TODO: Get from ConnectionStrings.config
sqlcmd -S .\ -U sa -P 10Philpot -Q "ALTER DATABASE [%Prefix%.officecore.netSitecore_reporting] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;"
sqlcmd -S .\ -U sa -P 10Philpot -Q "sp_detach_db [%Prefix%.officecore.netSitecore_reporting]"
del %RootFolder%\Databases\%Prefix%.officecore.netSitecore_reporting*
sqlcmd -S .\ -U sa -P 10Philpot -Q "RESTORE DATABASE [%Prefix%.officecore.netSitecore_reporting] FROM DISK = '%CD%\reporting.bak' WITH MOVE 'Sitecore.Analytics' TO '%RootFolder%\Databases\%Prefix%.officecore.netSitecore_reporting.mdf', MOVE 'Sitecore.Analytics_log' TO '%RootFolder%\Databases\%Prefix%.officecore.netSitecore_reporting.ldf'"
del reporting.bak

iisreset /start
pause