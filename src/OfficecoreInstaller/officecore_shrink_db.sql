TRUNCATE TABLE [$(prefix)Core].dbo.History
GO
TRUNCATE TABLE [$(prefix)Core].dbo.EventQueue
GO
TRUNCATE TABLE [$(prefix)Core].dbo.PublishQueue
GO

dbcc shrinkdatabase ([$(prefix)Reporting],TRUNCATEONLY)
dbcc shrinkdatabase ([$(prefix)Core],TRUNCATEONLY)
dbcc shrinkdatabase ([$(prefix)Master],TRUNCATEONLY)
dbcc shrinkdatabase ([$(prefix)Web],TRUNCATEONLY)
dbcc shrinkdatabase ([$(prefix)uCommerce],TRUNCATEONLY)