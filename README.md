T-SQL Performance Tuning Dashboard Project

This project will create a Performance Tuning Dashboard using SQL Server views that track long-running queries, index fragmentation, and deadlocks. The dashboard will leverage Dynamic Management Views (DMVs) to provide real-time insights for performance optimization.
________________________________________

2. SQL Components

A. View for Long-Running Queries

This view tracks queries that have been running for a long time (e.g., more than 5 seconds):

B. View for Index Fragmentation

This view identifies indexes with fragmentation above 30% that may need optimization.

C. View for Deadlocks

This view helps track recent deadlocks by querying the system health extended events.

________________________________________

3. Stored Procedure for Index Optimization

This stored procedure rebuilds fragmented indexes if fragmentation is above 30%.

Usage:

EXEC sp_RebuildIndexes;

________________________________________

4. Master Script to Create the Dashboard

This script creates all views and procedures in one execution.

Execution:

:r Scripts/Create_Performance_Dashboard.sql

________________________________________

5. Usage and Monitoring

Check long-running queries:

SELECT * FROM vw_LongRunningQueries;

Identify fragmented indexes:

SELECT * FROM vw_IndexFragmentation;

Monitor deadlocks:

SELECT * FROM vw_Deadlocks;

Optimize indexes:

EXEC sp_RebuildIndexes;

________________________________________

6. Benefits of This Approach

Real-time monitoring using DMV views.

Easy performance tuning with a structured dashboard.

Automated index maintenance for optimized performance.

Deadlock tracking to identify and resolve contention issues.


