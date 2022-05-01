## docker-composeの実行

```
$ docker-compose build
$ docker-compose up
```

## postgrsqlへ入る

```
$ docker exec -it postgres bash
```

shellへ入ったらpsqlで入ります。

```
# psql -U admin
```

## サンプルデータの準備

https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/

1. `dvdrental`のデータベースを作成
2. `sample/dvdrental.tar`を取り込む

の手順で、サンプルデータを準備します。

```sql
CREATE DATABASE dvdrental
```

データベースを作成し

```
$ pg_restore -U admin -d dvdrental /var/lib/postgresql/data/sample-db/dvdrental.tar
```

`pg_restore`でデータを読み込み

[https://www.postgresql.jp/docs/9.0/app-pgrestore.html](https://www.postgresql.jp/docs/9.0/app-pgrestore.html)

```
\c dvdrental
```

`\c`で`dvdrental`データベースに移動、`\dt`でテーブルを確認

```
dvdrental=# \dt
           List of relations
 Schema |     Name      | Type  | Owner
--------+---------------+-------+-------
 public | actor         | table | admin
 public | address       | table | admin
 public | category      | table | admin
 public | city          | table | admin
 public | country       | table | admin
 public | customer      | table | admin
 public | film          | table | admin
 public | film_actor    | table | admin
 public | film_category | table | admin
 public | inventory     | table | admin
 public | language      | table | admin
 public | payment       | table | admin
 public | rental        | table | admin
 public | staff         | table | admin
 public | store         | table | admin
(15 rows)

```