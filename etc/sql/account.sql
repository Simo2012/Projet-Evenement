-- =============================
-- Table Account
-- =============================
CREATE SCHEMA IF NOT EXISTS pote;
CREATE TABLE IF NOT EXISTS pote.account (
    id                  int(10) UNSIGNED    NOT NULL AUTO_INCREMENT COMMENT 'country unique id',
    user_id				int(11) UNSIGNED	NOT NULL COMMENT 'User account',
	rib					varchar(500) 		NOT NULL COMMENT 'RIB',
	amount				decimal(10,2)		NOT NULL COMMENT 'Ammount',
	PRIMARY KEY (id),
	CONSTRAINT accountUser_fk FOREIGN KEY (user_id) REFERENCES pote.user (id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Account';