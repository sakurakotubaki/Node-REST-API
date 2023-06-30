# Node.js + MySQLで作るREST API
環境構築の手順
1. 📦プロジェクトを作成する
```
mkdir rest-api-mysql2
```
2. 📦package.jsonファイルを作成
```
npm init -y
```
3. 📦node.jsのフレームワークをインストールする
```
npm i express
```
4. 📦mysqlと接続するパッケージをインストールする
```
npm install mysql2
```
5. 📦corsのパッケージをインストールする
```
npm i cors
```
6. 📦nodemonをインストールする
```
npm install -g nodemon
```
nodemon.jsonを作成して、index.jsを監視するファイルを作成する
```json
{
  "watch": ["index.js"],
  "ext": "js",
  "ignore": ["node_modules"],
  "exec": "node index.js"
}
```
7. MySQLにデータベースとテーブルを作成する
```sql
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
```
8. node.jsを起動するコマンド
```
nodemon
```