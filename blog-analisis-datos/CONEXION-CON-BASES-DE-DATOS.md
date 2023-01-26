# Bases de datos

Elementos para conexión con una base de datos:

- Un controlador o drive.
- Variables de conexión.
- Elementos para conexión mas segura como SSL/TCL

## MySQL

<div align="center">
<img src="https://drive.google.com/uc?id=13A19VstxtSpyHrs8m2aXoyVEJvfMtwA_" width="50%" height="100px"/>
</div>

```r
con <- dbConnect(RMySQL::MySQL(),
                  dbname = 'dbname',
                  host = 'host',
                  port = 'port',
                  user = 'user',
                  password = 'password')
```

## MariaDB

<div align="center">
<img src="https://drive.google.com/uc?id=1844-huLzhqMkSwoMWuTdx-J0U3FC52y4" width="50%" height="100px"/>
</div>

```r
con <- dbConnect(RMariaDB::MariaDB(),
                  dbname = 'dbname',
                  host = 'host',
                  port = 'port',
                  username = 'user',
                  password = 'password',
                  ssl.ca = 'rootSSL')
```

## PostgreSQL

<div align="center">
<img src="https://drive.google.com/uc?id=1eTPJFvcQzL52qp_e7yEE4TUH-BPFUEH4" width="50%" height="100px"/>
</div>

```r
con <- dbConnect(RPostgres::Postgres(),
                  dbname = 'dbname',
                  host = 'host',
                  port = 'port',
                  user = 'user',
                  password = 'password')
```

## MongoDB

<div align="center">
<img src="https://drive.google.com/uc?id=1f7JEnG9NTYLQJj02ttFMr549taRCg17b" width="50%" height="100px"/>
</div>

```r
queryList = mongo(collection='collection',
                  db='database',
                  url='dbURI')
```

# Elementos adicionales a la conexión a la base de datos
