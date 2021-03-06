USE [Vinicius]
GO
/****** Object:  StoredProcedure [dbo].[SP_WRK_CLIENTES]    Script Date: 07/12/2018 17:05:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		VINICIUS 
-- Create date: 12/07/2018
-- Description:	CRIAR TABELA WRK_CLIENTES
-- =============================================
ALTER  PROCEDURE  [dbo].[SP_WRK_CLIENTES]
AS BEGIN
	CREATE table WRK_CLIENTES
(
       [Row_Number]   int identity
	  ,[Customer ID]  VARCHAR(100)
      ,[Name]  VARCHAR(100)
      ,[Surname]  VARCHAR(100)
      ,[Gender]  VARCHAR(10)
      ,[Age]  FLOAT
      ,[Date Joined]  VARCHAR(50)
      ,[Balance]  FLOAT
)
-- =============================================
-- Description:	INSERIR DADOS NA TABELA 
-- =============================================

INSERT INTO [Vinicius].[dbo].[WRK_CLIENTES]
           ([Customer ID]
           ,[Name]
           ,[Surname]
           ,[Gender]
           ,[Age]
           ,[Date Joined]
           ,[Balance])
    
-- =============================================
-- Description:	INSERIR DADOS NA TABELA RAW
-- =============================================      
     SELECT 
       [Column 0]
      ,[Column 1]
      ,[Column 2]
      ,[Column 3]
      ,[Column 4]
      ,[Column 5]
      ,[Column 6]
  FROM [Vinicius].[dbo].[Raw_ClientesBanco_20180712]
      

END
