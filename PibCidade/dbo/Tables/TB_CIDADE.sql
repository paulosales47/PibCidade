/*
The bucket count should be set to about two times the 
maximum expected number of distinct values in the 
index key, rounded up to the nearest power of two.
*/

CREATE TABLE [dbo].[TB_CIDADE]
(
	[ID_CIDADE] INT NOT NULL PRIMARY KEY NONCLUSTERED HASH WITH (BUCKET_COUNT = 131072), 
    [NOME_CIDADE] VARCHAR(250) NOT NULL, 
    [STATUS] BIT NOT NULL
) WITH (MEMORY_OPTIMIZED = ON)

GO

/*
Do not change the database path or name variables.
Any sqlcmd variables will be properly substituted during 
build and deployment.
*/

ALTER DATABASE [$(DatabaseName)]
	ADD FILEGROUP [TB_CIDADE_FG] CONTAINS MEMORY_OPTIMIZED_DATA