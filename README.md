# Local Developer Kit

## 動作環境

- docker, docker-compose が使えること

## 準備

### docker network を作る

1. `docker network create shared_network`を実行する

### オレオレ認証用の証明書を作る (Option)

1. `openssl genrsa -aes128 2048 > ./nginx/ssl/server.key` or `openssl genrsa 2048 > ./nginx/ssl/server.key`を実行する
1. `openssl req -new -key ./nginx/ssl/server.key > ./nginx/ssl/server.csr`を実行する（適当に答える）
1. `openssl x509 -days 3650 -req -signkey ./nginx/ssl/server.key < ./nginx/ssl/server.csr > ./nginx/ssl/server.crt`を実行する

## 実行

1. `redmine`で`docker-compose up -d`を実行する
1. `nginx`で`docker-compose up -d`を実行する
