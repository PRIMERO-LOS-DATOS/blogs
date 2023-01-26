## BASES DE DATOS

Las bases de datos cumplen el objetivo de ser herramientas para recopilar y organizar datos que luego serán procesados para generar información.

Dado que los datos son la materia prima para el análisis estadístico, la comunidad del lenguaje R ha desarrollado herramientas que nos permiten conectarnos con dichas bases de datos.

### BASES DE DATOS RELACIONALES

El patrón para conectarnos con bases de datos relacionales contiene los siguientes elementos:

- Un controlador o drive.
- Variables de conexión.
- Elementos para conexión más segura como SSL

La librería principal que se encargara de hacer la conexión se denomina "DBI", que se encuentra en el repositorio de **CRAN**, pueden instalarlo en su sesión de R o RStudio con la siguiente instrucción:

```r
install.packages('DBI')
library(DBI) # Para activarla en su sección
```

Ahora bien, debe conseguir el driver correspondiente al tipo de base de datos que quiera conectarse, por su parte **CRAN** nos da diversas opciones:

```r
install.packages('RMySQL') # Para BBDD MySQL
install.packages('RMariaDB') # Para BBDD MariaDB
install.packages('RPostgres') # Para BBDD Postgres
```

El síguete paso corresponde identificar las variables de conexión:

- dbname: es un tipo de dato "texto" que hace referencia al nombre con el que se guardó la base de datos.
- host: es un tipo de dato "texto" que hace referencia a la url en la que se aloja la base de datos.
- port: es un tipo de dato "numérico" que indica el puerto por el cual esta expuesto la base de datos.
- user: es un tipo de dato "texto" que indica el nombre del usuario que intenta conectarse.
- password: es un tipo de dato "texto" la clave correspondiente al usuario que intenta conectarse.

En algunos casos será necesario una variable SSL:

- ssl.ca: es un tipo de dato "texto" que indica una ruta de directorio donde está ubicada el archivo SSL, que permite una comunicación más segura con la base de datos a través de encriptación, este archivo será dado por parte del proveedor de la base de datos.

Dada la explicación anterior los códigos necesarios para conectarnos con las diferentes bases de datos son los siguientes:

#### MySQL

<div align="center">
<img src="https://drive.google.com/uc?id=13A19VstxtSpyHrs8m2aXoyVEJvfMtwA_" width="40%" height="30vh"/>
</div>

```r
install.packages('RMySQL')
library(DBI)

con <- dbConnect(RMySQL::MySQL(),
                  dbname = 'dbname',
                  host = 'host',
                  port = 'port',
                  user = 'user',
                  password = 'password')
```

#### MariaDB

<div align="center">
<img src="https://drive.google.com/uc?id=1844-huLzhqMkSwoMWuTdx-J0U3FC52y4" width="40%" height="30vh"/>
</div>

```r
install.packages('RMariaDB')
library(DBI)

con <- dbConnect(RMariaDB::MariaDB(),
                  dbname = 'dbname',
                  host = 'host',
                  port = 'port',
                  username = 'user',
                  password = 'password',
                  ssl.ca = 'rootSSL')
```

#### PostgreSQL

<div align="center">
<img src="https://drive.google.com/uc?id=1eTPJFvcQzL52qp_e7yEE4TUH-BPFUEH4" width="40%" height="30vh"/>
</div>

```r
install.packages('RPostgres')
library(DBI)

con <- dbConnect(RPostgres::Postgres(),
                  dbname = 'dbname',
                  host = 'host',
                  port = 'port',
                  user = 'user',
                  password = 'password')
```

#### Consumo de datos

Una vez la conexión a la base de datos sea exitosa, podrá consultara a través de las distintas funciones disponibles en el paquete "DBI", por ejemplo:

```r
dbListTables(con) # Lista todas las tablas disponibles en la base de datos
dbWriteTable(con, "mtcars", mtcars) # Para crear tablas
dbReadTable(con, "mtcars") # Para cargar una tabla en especifico
dbSendQuery(con, "SELECT * FROM mtcars WHERE cyl = 4") # Hacer uso de setencia SQL
```

### BASE DE DATOS NO RELACIONALES

#### MongoDB

El patrón para conectarnos con bases de datos de MongoDB contiene los siguientes elementos:

- El nombre de la colección.
- El nombre de la base de datos.
- dbURI que permite hacer la conexión.

Por su parte CRAN nos provee de un paquete que nos permite hacer conexión con este tipo de bases de datos:

```r
install.packages('mongolite')
library(mongolite) # Para activar la libreria
```

<div align="center">
<img src="https://drive.google.com/uc?id=1f7JEnG9NTYLQJj02ttFMr549taRCg17b" width="40%" height="30vh"/>
</div>

```r
queryList = mongo(collection='collection',
                  db='database',
                  url='dbURI')
```

Dada la conexión con la base de datos mongo podrá hacer consultas como si lo hiciera en el propio mongoDB:

```r
query = trips_collection$find('{"usertype":"Subscriber","tripduration":{"$gt":500},"$expr": {"$eq": ["$start station name","$end station name"]}}')
```
