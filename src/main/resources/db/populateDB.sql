DELETE FROM rus_words;
DELETE FROM eng_words;
ALTER SEQUENCE rus_seq RESTART WITH 1;
ALTER SEQUENCE eng_seq RESTART WITH 1;

INSERT INTO eng_words(word) VALUES
('cat'),
('dog'),
('go');

INSERT INTO rus_words(word, word_id) VALUES
('koshka', 1),
('sobaka', 2),
('idti', 3),
('poehat', 3);