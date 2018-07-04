## README

```sh
docker run -it --rm --net=local --name clickhouse-client --link clickhouse-server:clickhouse-server yandex/clickhouse-client -m --host server
```

```SQL
CREATE TABLE testdata
ENGINE = MergeTree
ORDER BY id AS
SELECT *
FROM mysql('mysql', 'test', 'testdata', 'root', 'mysql')
WHERE id <= 1000000
```
