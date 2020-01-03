# ベースイメージ
FROM ubuntu:latest

# nginxをインストール
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install nginx

# ポートの設定
EXPOSE 80

# サーバの実行
CMD ["nginx", "-g", "daemon off;"]