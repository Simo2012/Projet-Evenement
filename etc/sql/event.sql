-- =============================
-- Table Evenement
-- =============================
CREATE SCHEMA IF NOT EXISTS pote;
CREATE TABLE IF NOT EXISTS pote.event (
    id                  int(10) UNSIGNED    NOT NULL AUTO_INCREMENT COMMENT 'event unique id',
    date_create         datetime            NOT NULL COMMENT 'Creation date',
	date                datetime            NOT NULL COMMENT 'Event date',
	type    			enum('public', 'private', 'partner') NOT NULL COMMENT 'Type of Event : Public, Private, Partner',
	is_cagnotte			boolean				NOT NULL COMMENT 'The cagnotte if is free or payent'
	description         varchar(500)        NOT NULL COMMENT 'Description Event',
	country_id          varchar(20)			NOT NULL COMMENT 'Country Event',
	city_id             varchar(20)			NOT NULL COMMENT 'City Event',
	address             varchar(20)			NOT NULL COMMENT 'Adress Event',
	images   			varchar(500)		NOT NULL COMMENT 'Image description of the event',
	title				varchar(50)			NOT NULL COMMENT 'Title Event',
	limit_user			int(10)						 COMMENT 'Number of the persone who must have',
	user_id			    int(10) UNSIGNED	NOT NULL COMMENT 'Membre who create this event',
	PRIMARY KEY (id),
    CONSTRAINT eventUser_fk FOREIGN KEY (user_id) REFERENCES pote.user (id) ON DELETE RESTRICT
	CONSTRAINT eventCountry_fk FOREIGN KEY (country_id) REFERENCES pote.country (id) ON DELETE RESTRICT
	CONSTRAINT eventCity_fk FOREIGN KEY (city_id) REFERENCES pote.city (id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Event';