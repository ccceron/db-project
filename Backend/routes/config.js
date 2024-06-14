
const config = {
    "user": "postgres", //env var: PGUSER
    "database": "db_project", //env var: PGDATABASE
    "password": "1234", //env var: PGPASSWORD
    "host": "192.168.56.1", // Server hosting the postgres database
    "port": 5432, //env var: PGPORT
    "max": 10, // max number of clients in the pool
    "idleTimeoutMillis": 30000, // how long a client is allowed to remain idle before being closed
  };
  
  export default config