-- N° 1 | Básico 22/09/2023

-- Crear DB Modelo
CREATE DATABASE Modelo;
GO

-- Crear carpetas
xp_create_subdir 'E:\RepositoriosGitHub\SQLserver_Query\Nivel_Basico\DB'
go

-- El Archivo principal siempre debe tener de extensión '.mdf'
-- Creamos DB Negocio-- Size = Tamaño Inicial, MaxSize = Tamaño Máximo, filegrowth
-- filegroup = AGRUPARLO POR GRUPOS
CREATE DATABASE Negocio 
	on PRIMARY
		(name = 'Datos_Negocio', filename = 'E:\RepositoriosGitHub\SQLserver_Query\Nivel_Basico\DB\Datos_Negocio.mdf',
				Size = 20MB, MaxSize = 20GB, filegrowth = 100MB),
		(name = 'Datos_Negocio02', filename = 'E:\RepositoriosGitHub\SQLserver_Query\Nivel_Basico\DB\Datos_Negocio02.ndf', 
				Size = 50MB),
		(name = 'Datos_Negocio03', filename = 'E:\RepositoriosGitHub\SQLserver_Query\Nivel_Basico\DB\Datos_Negocio03.ndf', 
				Size = 50MB, MaxSize = 5GB, filegrowth = 50%),
			filegroup COMERCIAL
		 (name = 'CMRL00', filename = 'E:\RepositoriosGitHub\SQLserver_Query\Nivel_Basico\DB\CMRL00.ndf'),
		 (name = 'CMRL01', filename = 'E:\RepositoriosGitHub\SQLserver_Query\Nivel_Basico\DB\CMRL01.ndf'),
		 (name = 'CMRL02', filename = 'E:\RepositoriosGitHub\SQLserver_Query\Nivel_Basico\DB\CMRL02.ndf'),
			filegroup PERSONAS
		 (name = 'Personal', filename = 'E:\RepositoriosGitHub\SQLserver_Query\Nivel_Basico\DB\Personal.ndf')
			LOG ON
		 (name = 'Transaciones01', filename = 'E:\RepositoriosGitHub\SQLserver_Query\Nivel_Basico\DB\Transaciones01.ldf'),
		 (name = 'Transaciones02', filename = 'E:\RepositoriosGitHub\SQLserver_Query\Nivel_Basico\DB\Transaciones02.ldf')
GO

PRINT 'tamadre March';