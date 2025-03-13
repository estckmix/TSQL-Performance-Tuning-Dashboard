-- Create Views
PRINT 'Creating Views...';
GO
:r Views/vw_LongRunningQueries.sql
GO
:r Views/vw_IndexFragmentation.sql
GO
:r Views/vw_Deadlocks.sql
GO

-- Create Stored Procedures
PRINT 'Creating Stored Procedures...';
GO
:r Procedures/sp_RebuildIndexes.sql
GO

PRINT 'Performance Tuning Dashboard Created Successfully!';
