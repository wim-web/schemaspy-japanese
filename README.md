## start
```$xslt
cp schemaspy-properties.example schemaspy-properties
```
- t : DBの種類
- host : host名
- port : port
- db : db name
- u : user name
- p : password
- s : スキーマ名（mysqlはdbと同じ名前を指定）

```$xslt
docker pull wimweb/shemaspy-japanese
```

```$xslt
docker run -v "$PWD/output:/output" -v "$PWD/schemaspy.properties:/schemaspy.properties" wimweb/schemaspy-japanese
```


## docker hub
https://hub.docker.com/r/wimweb/shemaspy-japanese