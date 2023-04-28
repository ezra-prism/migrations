# LocalApollo

## Environment Variables

| Envionment Variable      | Description |
| ----------- | ----------- |
| LAPOLLO_DB_DIR      | Local directory of where to persist DB files       |
| LAPOLLO_DB_PWD      | abc123!@#       |


## Data Storage

### Database
The database is created from a docker image and spun up with docker compose.
it runs an initialize script when the server is first started. This creates the 
initial database for us to use `productionplanning_data_db`

A Migration service (Flyway) is also configured in docker compose. This service
runs migrations on the database.