cd /d %0\..
SET Prefix=demo
SET RootFolder=C:\Websites\%Prefix%.officecore.net
SET Zip=..\7zip\7z.exe a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on
SET MongoDump=c:\mongodb\bin\mongodump -o MongoDatabases -db

iisreset /stop

del *.zip

::DO MONGO
rd /S /Q MongoDatabases

%MongoDump% %Prefix%_officecore_net_analytics
ren MongoDatabases\%Prefix%_officecore_net_analytics analytics

%MongoDump% %Prefix%_officecore_net_ecm_dispatch
ren MongoDatabases\%Prefix%_officecore_net_ecm_dispatch ecm_dispatch

%MongoDump% %Prefix%_officecore_net_tracking_contact
ren MongoDatabases\%Prefix%_officecore_net_tracking_contact tracking_contact

%MongoDump% %Prefix%_officecore_net_tracking_history
ren MongoDatabases\%Prefix%_officecore_net_tracking_history tracking_history

%MongoDump% %Prefix%_officecore_net_tracking_live
ren MongoDatabases\%Prefix%_officecore_net_tracking_live tracking_live

%Zip% MongoDatabases.zip MongoDatabases
rd /S /Q MongoDatabases

::DO LUCENE
%Zip% sitecore_analytics_index.zip %RootFolder%\Data\indexes\sitecore_analytics_index

::DO SQL
del *.bak

::TODO: Get credentials from ConnectionStrings.config
sqlcmd -S .\ -U sa -P 10Philpot -Q "DBCC SHRINKDATABASE ([%Prefix%.officecore.netSitecore_reporting])"
sqlcmd -S .\ -U sa -P 10Philpot -Q "BACKUP DATABASE [%Prefix%.officecore.netSitecore_reporting] TO DISK = '%CD%\reporting.bak' WITH FORMAT, MEDIANAME='%PreFix%_Analytics', NAME='%PreFix%_Analytics Full Backup'"

%Zip% SitecoreReporting.zip reporting.bak

del *.bak

iisreset /start
pause