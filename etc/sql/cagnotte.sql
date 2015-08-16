-- =============================
-- Table Cagnotte
-- =============================
CREATE SCHEMA IF NOT EXISTS pote;
CREATE TABLE IF NOT EXISTS pote.cagnotte (
    id                  int(10) UNSIGNED    NOT NULL AUTO_INCREMENT COMMENT 'cagnotte unique id',
    event_id			int(10) UNSIGNED	NOT NULL COMMENT 'Event Cagnotte',
	price				decimal(10,2) 				 COMMENT 'Price of the Event',
	amount				decimal(10,2) 				 COMMENT 'Current cagnotte',
	PRIMARY KEY (id),
	CONSTRAINT cagnotteEvent_fk FOREIGN KEY (event_id) REFERENCES pote.event (id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cagnotte';
