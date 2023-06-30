-- データベースの作成
CREATE DATABASE MyData;
-- データベースの切り替え
use MyData;

-- animalsテーブルの作成
CREATE TABLE animals (
     id MEDIUMINT NOT NULL AUTO_INCREMENT,
     name CHAR(30) NOT NULL,
     PRIMARY KEY (id)
);

-- animalsテーブルにデータを挿入
INSERT INTO animals (name) VALUES
    ('dog'),('cat'),('penguin'),
    ('lax'),('whale'),('ostrich');

-- animalsテーブルのデータを表示
SELECT * FROM animals;

-- テーブルの各カラムの情報を表示します。
DESC animals;

-- EXIT または \qでMySQLを終了
