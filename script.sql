USE [academico]
GO
/****** Object:  Table [dbo].[Aluno]    Script Date: 26/10/2023 20:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aluno](
	[idAluno] [int] NOT NULL,
	[RaAluno] [char](11) NOT NULL,
	[NomeCompletoAluno] [text] NOT NULL,
	[CPFAluno] [char](11) NOT NULL,
	[RgAluno] [char](10) NOT NULL,
	[DataNascimentoAluno] [date] NOT NULL,
	[MediaNotaAluno] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_Aluno] PRIMARY KEY CLUSTERED 
(
	[idAluno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[banco_ti]    Script Date: 26/10/2023 20:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[banco_ti](
	[column1] [nvarchar](250) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[endereço]    Script Date: 26/10/2023 20:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[endereço](
	[idEnderecoAluno] [int] NOT NULL,
	[RuaEnderecoAluno] [text] NOT NULL,
	[NumeroEnderecoAluno] [text] NOT NULL,
	[CidadeEnderecoAluno] [text] NOT NULL,
	[CEPEnderecoAluno] [char](8) NOT NULL,
	[idAluno] [int] NOT NULL,
 CONSTRAINT [PK_endereço] PRIMARY KEY CLUSTERED 
(
	[idEnderecoAluno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK- Chave primaria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Aluno', @level2type=N'COLUMN',@level2name=N'idAluno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'numero registro do aluno (RA)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Aluno', @level2type=N'COLUMN',@level2name=N'RaAluno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome Completo Aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Aluno', @level2type=N'COLUMN',@level2name=N'NomeCompletoAluno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'numero de cadastro de pessoa fisica (CPF) na receita federal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Aluno', @level2type=N'COLUMN',@level2name=N'CPFAluno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numero Registro Geral do Aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Aluno', @level2type=N'COLUMN',@level2name=N'RgAluno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Media da nota do aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Aluno', @level2type=N'COLUMN',@level2name=N'MediaNotaAluno'
GO
