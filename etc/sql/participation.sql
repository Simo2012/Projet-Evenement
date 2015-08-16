-- =============================
-- Table Participation
-- =============================
CREATE SCHEMA IF NOT EXISTS pote;
CREATE TABLE IF NOT EXISTS pote.participation (
    id                  int(10) UNSIGNED    NOT NULL AUTO_INCREMENT COMMENT 'participation unique id',
    event_id			int(10) UNSIGNED	NOT NULL COMMENT 'Event participation',
	user_id				int(10) UNSIGNED	NOT NULL COMMENT 'User participation',
	PRIMARY KEY (id),
	CONSTRAINT participationEvent_fk FOREIGN KEY (event_id) REFERENCES pote.event (id) ON DELETE RESTRICT
	CONSTRAINT participationUser_fk FOREIGN KEY (user_id) REFERENCES pote.user (id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Participation';