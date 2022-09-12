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

code-serverのextension
```
# container起動してから、web browserでcode-serverに入ってから実行
code-server --install-extension firsttris.vscode-jest-runner
code-server --install-extension dracula-theme.theme-dracula
```