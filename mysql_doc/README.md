## MySQLの設定について
MySQLでユーザーの権限と接続情報を確認するために、以下のコマンドを使用できます。

## ユーザーと権限の確認

```sql
SELECT User, Host, authentication_string FROM mysql.user;
```

これにより、MySQLサーバーのユーザーテーブルからユーザー名（User）、ホスト（Host）、および認証文字列（authentication_string）が取得されます。rootユーザーの権限とホスト情報が含まれているか確認できます。

特定のユーザーの権限の確認

```sql
SHOW GRANTS FOR 'ユーザー名'@'ホスト名';
```
上記のコマンドの 'ユーザー名' と 'ホスト名' の部分を該当するユーザーとホスト名に置き換えて実行します。例えば、rootユーザーの権限を確認する場合は、以下のようになります。

```sql
SHOW GRANTS FOR 'root'@'localhost';
```
これにより、指定したユーザーに設定された権限が表示されます。

上記のコマンドを使用して、MySQLのユーザーと権限を確認してください。必要な情報が得られれば、接続情報を修正する際の参考になります。

## HTTP POST
POSTMANを使用してPOSTリクエストを送信する場合、JSONの構造は以下のようになります。

エンドポイント: http://localhost:3001/animals (サーバーがポート3001で実行されている場合)

リクエストボディ (JSON形式):
```json
{
  "name": "動物の名前"
}
```

上記の例では、nameプロパティに動物の名前を指定します。

idは自動的に生成されるため、POSTリクエストで明示的に指定する必要はありません。データベース内で自動インクリメントされるため、新しいレコードが作成されるたびに一意のidが割り当てられます。

POSTMANで上記のリクエストボディを指定し、エンドポイントにPOSTリクエストを送信してください。その際、正しいエンドポイント（http://localhost:3001/animals）とJSON形式のリクエストボディが指定されていることを確認してください。