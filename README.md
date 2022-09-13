詳細な構築方法は下記記事にまとめた。  
https://rheb.hatenablog.com/entry/2022/09/13/152350

node 16 の code-serverイメージを作成
```
cd code-server
podman build --format docker --layers=false -t code-server-nodejs16:latest .
```

server1のコンテナを起動
```
cd code-server/server1
podman-compose -f code-server.yml up -d
```

server2のコンテナを起動
```
cd code-server/server2
podman-compose -f code-server.yml up -d
```