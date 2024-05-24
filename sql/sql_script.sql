USE kaggle
GO

--EN CASO NO EXISTA LA TABLA NETFLIX
IF NOT EXISTS(SELECT * FROM SYS.TABLES WHERE object_id = OBJECT_ID(N'dbo.netflix') AND type  = 'U')

CREATE TABLE netflix(
	show_id varchar(20),
	type_show varchar(20),
	title varchar(max),
	director varchar (max),
	country varchar (200),
	date_added varchar (50),
	release_year varchar (10),
	rating varchar (10),
	duration varchar (20),
	listed_in varchar (50),
	description_show  varchar (max)
	)
	--SI LA TABLA YA EXISTE ENTONCES LA TRUNCO
	TRUNCATE TABLE  dbo.netflix
	--INSERTAR DATASET 
	BULK INSERT dbo.netflix
	FROM 'C:\Users\LENOVO\Documents\Proyecto_Parcial\Python\dataset\netflix_titles.csv'
	with
	(
	FIRSTROW = 2, --empieza en la segunda fila
	FIELDTERMINATOR =',',
	ROWTERMINATOR = '0X0'


	)

	GO





