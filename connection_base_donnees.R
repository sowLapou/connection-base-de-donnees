install.packages('RPostgreSQL')
install.packages('devtools')
install.packages('remotes')
remotes::install_github("r-dbi/RPostgres")
install.packages('RPostgres')
con<-dbConnect(RPostgres::Postgres())
library(DBI)
db = 'bkk8aqrbixjgpov5d4wa'  

host_db = 'hv-par4-025.clvrcld.net'  

db_port = '14354'  

db_user = 'uxydmtb3nu4u9jozuzwo'

db_password = 'm1q7eVHdSv9j0zl5WcOA'
con <- dbConnect(RPostgres::Postgres(), dbname = db, host=host_db, port=db_port, 
                 user=db_user, password=db_password)
dbListTables(con)

data=dbGetQuery(con, 'SELECT * FROM shipment') 
head(data)
