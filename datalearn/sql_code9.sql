
/*
(Организация хранения данных в Базе данных)

Схемы Баз данных (Schemas) -- некое пространство в Базе данных. Данное пространство может содержать разные 
таблицы и как правило относится к одному бизнесс-процессу. Своего рода папки в ОС. 

ПРИМЕР: всем сотрудникам крупной организации нет необходимости иметь доступ ко всем таблицам Базы данных -->-->
используют схемы, чтобы структурировать таблицы по неким блокам с определенными правами доступа к ним.

A database schema defines how data is organized within a relational database; this is inclusive of logical 
constraints such as, table names, fields, data types, and the relationships between these entities. 
Schemas commonly use visual representations to communicate the architecture of the database, becoming the 
foundation for an organization’s data management discipline. This process of database schema design is also 
known as data modeling.
*/





https://www.sqlstyle.guide

SELECT
	b.authors,
	b.title
FROM
	public.books AS b;
  
  
SELECT
	b.authors,
	b.title,
	m.authors,
	m.title
FROM
	public.books AS b
JOIN
	public.magazines AS m;
  
  
SELECT
	*
FROM
	public.avocado_prices AS ap;


SELECT
	*
FROM
	public.video_game_sales AS vgs;


  
