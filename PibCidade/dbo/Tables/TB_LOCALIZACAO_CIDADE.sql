/*
The bucket count should be set to about two times the 
maximum expected number of distinct values in the 
index key, rounded up to the nearest power of two.
*/

CREATE TABLE [dbo].[TB_LOCALIZACAO_CIDADE]
(
	[ID_CIDADE] INT NOT NULL, 
    [LATITUDE] FLOAT NOT NULL, 
    [LONGITUDE] FLOAT NOT NULL, 
    [COORDENADA_EXTENSO] VARCHAR(50) NULL, 
    CONSTRAINT [FK_TB_LOCALIZACAO_CIDADE_TB_CIDADE] FOREIGN KEY ([ID_CIDADE]) REFERENCES [TB_CIDADE]([ID_CIDADE]) 
) 

GO
