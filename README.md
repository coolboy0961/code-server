詳細な構築方法は下記記事にまとめた。  
https://rheb.hatenablog.com/entry/2022/09/13/152350

# nodejs-servers
node 16 の code-serverイメージを作成
```
cd code-server/nodejs-servers
podman build --format docker --layers=false -t code-server-nodejs16:latest .
```

code-serverのコンテナを起動
```
cd code-server/nodejs-servers
podman-compose -f code-server.yml up -d
```

# python-servers
python 3.10 の code-serverイメージを作成
```
cd code-server/python-servers
podman build --format docker --layers=false -t code-server-python3:latest .
```

code-serverのコンテナを起動
```
cd code-server/python-servers
podman-compose -f code-server.yml up -d
```

# code-server 操作方法
dirAもしくはdirBをworkspaceとして開く場合、下記コマンドを実行する
```
code-server ./dirA # opens ./dirA
code-server ./dirB # opens ./dirB
```