-- Create Paris Olympics Database
CREATE DATABASE ParisOlympics;

-- Select Paris Olympics Database
USE ParisOlympics;

-- Create athlete table
CREATE TABLE dbo.athlete
(
	code INT NOT NULL PRIMARY KEY,
	[name] NVARCHAR(100) NOT NULL,
	name_short NVARCHAR(100) NOT NULL,
	name_tv NVARCHAR(100) NOT NULL,
	gender NVARCHAR(20) NOT NULL,
	[function] NVARCHAR(50) NOT NULL,
	country_code NVARCHAR(20) NOT NULL,
	country NVARCHAR(50) NOT NULL,
	country_full NVARCHAR(50) NOT NULL,
	nationality NVARCHAR(50) NOT NULL,
	nationality_full NVARCHAR(50) NOT NULL,
	nationality_code NVARCHAR(20) NOT NULL,
	height INT NOT NULL,
	[weight] INT NOT NULL,
	disciplines NVARCHAR(50) NOT NULL,
	[events] NVARCHAR(100) NOT NULL,
	birth_date DATE NOT NULL,
	birth_place NVARCHAR(50),
	birth_country NVARCHAR(50),
	residence_place NVARCHAR(50),
	residence_country NVARCHAR(50),
	nickname NVARCHAR(MAX),
	hobbies NVARCHAR(MAX),
	occupation NVARCHAR(50),
	education NVARCHAR(MAX),
	family NVARCHAR(MAX),
	lang NVARCHAR(100),
	coach NVARCHAR(100),
	reason TEXT,
	hero TEXT,
	influence TEXT,
	philosophy TEXT,
	sporting_relatives TEXT,
	ritual TEXT,
	other_sports TEXT
)

-- Create coach table
CREATE TABLE dbo.coach
(
	code INT NOT NULL PRIMARY KEY,
	[name] NVARCHAR(100) NOT NULL,
	gender NVARCHAR(20) NOT NULL,
	[function] NVARCHAR(20) NOT NULL,
	category CHAR(1) NOT NULL,
	country_code NVARCHAR(20) NOT NULL,
	country NVARCHAR(50) NOT NULL,
	country_full NVARCHAR(50) NOT NULL,
	disciplines NVARCHAR(50) NOT NULL,
	[events] NVARCHAR(50) NOT NULL
)

-- Create event table
CREATE TABLE dbo.[event]
(
	[event] NVARCHAR(100) NOT NULL,
	tag NVARCHAR(100) NOT NULL,
	sport NVARCHAR(100) NOT NULL,
	sport_code NVARCHAR(20) NOT NULL,
	sport_url TEXT NOT NULL
)

-- Create medalist table
CREATE TABLE dbo.medalist
(
	medal_date DATE NOT NULL,
	medal_type NVARCHAR(20) NOT NULL,
	medal_code INT NOT NULL,
	[name] NVARCHAR(100) NOT NULL,
	gender NVARCHAR(10) NOT NULL,
	country NVARCHAR(50) NOT NULL,
	country_code NVARCHAR(5) NOT NULL,
	nationality NVARCHAR(50) NOT NULL,
	team NVARCHAR(50),
	team_gender CHAR(1),
	discipline NVARCHAR(50) NOT NULL,
	[event] NVARCHAR(50) NOT NULL,
	event_type NVARCHAR(50) NOT NULL,
	url_event TEXT NOT NULL,
	birth_date DATE NOT NULL,
	code INT NOT NULL
)

-- Create medal table
CREATE TABLE dbo.medal
(
	medal_type NVARCHAR(20) NOT NULL,
	medal_code INT NOT NULL,
	medal_date DATE NOT NULL,
	[name] NVARCHAR(50) NOT NULL,
	country_code NVARCHAR(20) NOT NULL,
	gender CHAR(1) NOT NULL,
	discipline NVARCHAR(20) NOT NULL,
	[event] NVARCHAR(50) NOT NULL,
	event_type NVARCHAR(10) NOT NULL,
	url_event TEXT NOT NULL,
	code NVARCHAR(50) NOT NULL
)

-- Create medal total table
CREATE TABLE dbo.medal_total
(
	country_code NVARCHAR(5) NOT NULL PRIMARY KEY,
	[Gold Medal] INT NOT NULL,
	[Silver Medal] INT NOT NULL,
	[Bronze Medal] INT NOT NULL,
	Total INT NOT NULL
)

-- Create schedule table
CREATE TABLE dbo.schedule
(
	[start_date] DATETIME NOT NULL,
	end_date DATETIME,
	[day] DATE NOT NULL,
	[status] NVARCHAR(20) NOT NULL,
	discipline NVARCHAR(50) NOT NULL,
	discipline_code NVARCHAR(5) NOT NULL,
	[event] NVARCHAR(10),
	event_medal INT NOT NULL,
	phase NVARCHAR(100) NOT NULL,
	gender CHAR(1) NOT NULL,
	event_type NVARCHAR(10) NOT NULL,
	venue NVARCHAR(50) NOT NULL,
	venue_code NVARCHAR(5) NOT NULL,
	location_description NVARCHAR(50) NOT NULL,
	location_code NVARCHAR(5) NOT NULL,
	[url] TEXT
)

-- Create schedule preliminary table
CREATE TABLE dbo.schedule_preliminary
(
	date_start_utc DATETIME NOT NULL,
	date_end_utc DATETIME NOT NULL,
	estimated NVARCHAR(10) NOT NULL,
	estimated_start NVARCHAR(10) NOT NULL,
	start_text NVARCHAR(5),
	medal INT,
	venue_code NVARCHAR(5) NOT NULL,
	[description] NVARCHAR(10) NOT NULL,
	venue_code_other NVARCHAR(5),
	discription_other NVARCHAR(20),
	team_1_code NVARCHAR(5),
	team_1 NVARCHAR(20),
	team_2_code NVARCHAR(5),
	team_2 NVARCHAR(20),
	tag NVARCHAR(10) NOT NULL,
	sport NVARCHAR(10) NOT NULL,
	sport_code NVARCHAR(5) NOT NULL,
	sport_url TEXT NOT NULL
)

-- Create team table
CREATE TABLE dbo.team
(
	code NVARCHAR(100) NOT NULL PRIMARY KEY,
	team NVARCHAR(20) NOT NULL,
	team_gender CHAR(1) NOT NULL,
	country NVARCHAR(20) NOT NULL,
	country_full NVARCHAR(20) NOT NULL,
	country_code NVARCHAR(5) NOT NULL,
	discipline NVARCHAR(10) NOT NULL,
	disciplines_code NVARCHAR(5) NOT NULL,
	[events] NVARCHAR(20) NOT NULL,
	athletes NVARCHAR(MAX) NOT NULL,
	coaches NVARCHAR(MAX),
	athletes_codes NVARCHAR(100) NOT NULL,
	num_athletes INT NOT NULL,
	coaches_codes NVARCHAR(100),
	num_coaches INT
)

-- Create torch route table
CREATE TABLE dbo.torch_route
(
	title NVARCHAR(50) NOT NULL,
	city NVARCHAR(50),
	date_start DATETIME NOT NULL,
	date_end DATETIME NOT NULL,
	tag NVARCHAR(100) NOT NULL,
	[url] TEXT NOT NULL,
	stage_number INT
)

-- Create venue table
CREATE TABLE dbo.venue
(
	venue NVARCHAR(50) NOT NULL,
	sports NVARCHAR(100) NOT NULL,
	date_start DATETIME,
	date_end DATETIME,
	tag NVARCHAR(50) NOT NULL,
	[url] TEXT NOT NULL
)

-- Create SQL Query for OLAB Multidimensional Cube
SELECT
	[Athlete ID],
	Schedule,
	[Athlete Name],
	Country,
	Disciplines,
	Gender,
	[Coach ID],
	[Coach Name],
	[function],
	[Medal Type],
	[Event Type],
	[Event],
	Sport,
	Venue,
	Height,
	[Weight],
	[Bronze Medal],
	[Silver Medal],
	[Gold Medal],
	[Total Medal]
FROM (
SELECT
	ae.code AS [Athlete ID],
	se.[day] AS Schedule,
	ae.[name] AS [Athlete Name],
	ae.country AS Country,
	ae.disciplines AS Disciplines,
	ae.gender AS Gender,
	ch.code AS [Coach ID],
	ch.[name] AS [Coach Name],
	ch.[function] AS [Function],
	ml.medal_type AS [Medal Type],
	ml.event_type AS [Event Type],
	CASE
		WHEN et.[event] LIKE '%Men%'
		THEN 'Men Team'
		WHEN et.[event] LIKE '%Women%'
		THEN 'Women Team'
		ELSE 'Mixed Team'
	END AS [Event],
	et.sport AS Sport,
	se.venue AS Venue,
	ae.height AS Height,
	ae.[weight] AS [Weight],
	mt.[Bronze Medal],
	mt.[Silver Medal],
	mt.[Gold Medal],
	mt.[Bronze Medal] + mt.[Silver Medal] + mt.[Gold Medal] AS [Total Medal],
	ROW_NUMBER() OVER (PARTITION BY ml.code
	ORDER BY ml.code) AS rn
FROM ParisOlympics..medal_total mt
LEFT JOIN ParisOlympics..athlete ae ON mt.country_code = ae.country_code
LEFT JOIN ParisOlympics..coach ch ON mt.country_code = ch.country_code
LEFT JOIN ParisOlympics..medal ml ON mt.country_code = ml.country_code
LEFT JOIN ParisOlympics..[event] et ON ml.[event] = et.[event]
LEFT JOIN ParisOlympics..schedule se ON ae.disciplines = se.discipline
) AS x
WHERE rn = 1