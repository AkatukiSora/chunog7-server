# Zabbix Serverを立てる

公式のDocker Composeファイルを利用し，Zabbix Serverを立てる手順．

## 手順

詳細は[ドキュメント](https://www.zabbix.com/documentation/current/en/manual/installation/containers#docker-compose)参照．

```bash
git clone https://github.com/zabbix/zabbix-docker.git
cd zabbix-docker
git checkout 7.4.6
docker compose -f ./docker-compose_v3_ubuntu_pgsql_latest.yaml up -d
```

以上で，http://localhost:80で見れる．

## ログイン情報

user: Admin  
pass: zabbix  

