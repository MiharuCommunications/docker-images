# TensorFlow on AWS

+ AWS 上で AWS のコマンドを利用しながら TensorFlow を実行するためのコンテナ

## インストールされているもの

+ Python 2
+ Python 3
+ AWS CLI


## Docker コマンド

### 実行

```
docker run -it miharu/tensorflow-aws:1.6.0
```

### ビルド

```
docker build -t miharu/tensorflow-aws:1.6.0 .
```
