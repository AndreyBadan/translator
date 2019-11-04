DROP TABLE IF EXISTS rus_words;
DROP TABLE IF EXISTS eng_words;
DROP SEQUENCE IF EXISTS eng_seq;
DROP SEQUENCE IF EXISTS rus_seq;

CREATE SEQUENCE eng_seq START WITH 1;
CREATE SEQUENCE rus_seq START WITH 1;

CREATE TABLE eng_words
(
    id               INTEGER PRIMARY KEY DEFAULT nextval('eng_seq'),
    word             VARCHAR         NOT NULL
);
CREATE UNIQUE INDEX eng_words_unique_word_idx ON eng_words (word);


CREATE TABLE rus_words
(
   id                INTEGER PRIMARY KEY DEFAULT nextval('rus_seq'),
   word_id           INTEGER   NOT NULL,
   word              VARCHAR   NOT NULL,
   FOREIGN KEY (word_id) REFERENCES eng_words (id) ON DELETE CASCADE
);
