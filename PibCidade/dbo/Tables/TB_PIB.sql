CREATE TABLE [dbo].[TB_PIB] (
    [ID_PIB]              INT           IDENTITY (1, 1) NOT NULL,
    [POSICAO]             SMALLINT      NOT NULL,
    [CIDADE]              VARCHAR (MAX) NOT NULL,
    [VALOR]               MONEY         NOT NULL,
    [PERCENTUAL_RELATIVO] FLOAT (53)    NOT NULL,
    [PERCENTUAL_TOTAL]    FLOAT (53)    NOT NULL,
    [COORDENADA_X]        FLOAT (53)    NULL,
    [COORDENADA_Y]        FLOAT (53)    NULL,
    CONSTRAINT [PK_PIB] PRIMARY KEY CLUSTERED ([ID_PIB] ASC)
);

