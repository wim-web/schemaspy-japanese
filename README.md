## 概要
こちらはschemaspyで日本語を表示させるためのdocker image作成用になります。

jdbcドライバを

- mysql: 8.0.16
- postgres: 42.2.7

にしています。足りない場合は別途自分でご用意ください。

## 始め方

まずは接続するDBの情報を書き込むファイルを用意します。

```$xslt
cp schemaspy-properties.example schemaspy-properties
```

書き込む内容は以下を参考にしてください。

- t : DBの種類
- host : host名
- port : port
- db : db name
- u : user name
- p : password
- s : スキーマ名（mysqlはdbと同じ名前を指定）

docker imageを作成します。
Dockerfileから作成してもよいですが、docker hubにもあげているので、そちらからも取得可能です。

```$xslt
docker pull wimweb/shemaspy-japanese
```

ER図を作成するには下記コマンドを実行してください。
ファイルの生成ディレクトリを変更したい場合は、`$PWD/output`の箇所を変更してください。

```$xslt
docker run -v "$PWD/output:/output" -v "$PWD/schemaspy.properties:/schemaspy.properties" wimweb/schemaspy-japanese
```


## docker hub
https://hub.docker.com/r/wimweb/shemaspy-japanese
