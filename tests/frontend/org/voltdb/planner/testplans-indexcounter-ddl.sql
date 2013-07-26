CREATE TABLE T1 (
	ID INTEGER NOT NULL,
	POINTS INTEGER NOT NULL,
	AGE TINYINT NOT NULL,
	PRIMARY KEY (ID)
);
create index idx_1_tree on T1 (POINTS);

CREATE TABLE T2 (
	ID INTEGER NOT NULL,
	USERNAME VARCHAR(10) NOT NULL,
	POINTS INTEGER NOT NULL,
	AGE TINYINT NOT NULL,
	PRIMARY KEY (ID)
);
create unique index idx_2_tree on T2 (USERNAME,POINTS);
create index idx_t2_tree on T2 (ID, USERNAME);

CREATE TABLE P1 (
  ID INTEGER DEFAULT '0' NOT NULL,
  DESC VARCHAR(300),
  NUM INTEGER NOT NULL,
  RATIO FLOAT NOT NULL,
  PRIMARY KEY (ID)
);
CREATE INDEX P1_IDX_NUM_TREE ON P1 (NUM);

PARTITION TABLE P1 ON COLUMN ID;

CREATE TABLE T3 (
    T3_ID INTEGER DEFAULT '0' NOT NULL,
    T3_DESC VARCHAR(300),
    T3_NUM1 INTEGER NOT NULL,
    T3_NUM2 INTEGER NOT NULL,
    PRIMARY KEY (T3_ID)
);
CREATE INDEX T3_IDX_T3NUM_TREE ON T3 (T3_NUM1,T3_NUM2);
