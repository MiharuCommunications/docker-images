# Docker image for MeCab


## EC2 上でのビルド手順

```
sudo yum update -y
sudo yum install -y docker

sudo service docker start

sudo usermod -a -G docker ec2-user
```

```
vi Dockerfile
```

```
docker build -t miharu/mecab ./

docker run -it miharu/mecab


docker login

docker push miharu/mecab
docker pull miharu/mecab
```

+ [SSH を使用した Linux インスタンスへの接続 - Amazon Elastic Compute Cloud](https://docs.aws.amazon.com/ja_jp/AWSEC2/latest/UserGuide/AccessingInstancesLinux.html)
+ [AWSのEC2でDockerを試してみる - Qiita](https://qiita.com/yumatsud/items/33bc22f7d8f640a286f4)
+ [Dockerhubへの初プッシュ - Qiita](https://qiita.com/moru3/items/32931813db81d891effb)
