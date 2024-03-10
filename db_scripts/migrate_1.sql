CREATE TABLE IF NOT EXISTS band(bandName varchar(50), creation YEAR, genre varchar(50), PRIMARY KEY (bandName));

 INSERT INTO band(bandName, creation, genre) VALUES
    ("Crazy Duo", 2015, "rock"), ("Luna",2009,"classical"), ("Mysterio",2019,"pop");

ALTER TABLE singer ADD COLUMN role varchar(50);
ALTER TABLE singer ADD COLUMN bandName varchar(50);

ALTER TABLE singer RENAME COLUMN singerName TO musicianName;

UPDATE singer SET role = "vocals", bandName = "Crazy Duo" WHERE musicianName = "Alina";
UPDATE singer SET role = "piano", bandName = "Luna" WHERE musicianName = "Luna";
UPDATE singer SET role = "percussion", bandName = "Crazy Duo" WHERE musicianName = "Rainbow";
UPDATE singer SET role = "guitar", bandName = "Mysterio" WHERE musicianName = "Mysterio";

ALTER TABLE singer RENAME TO musician;