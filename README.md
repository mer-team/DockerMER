# DockerMER

<to be updated>

## HOWTO

1. git clone
2. vagrant up
3. vagrant ssh
4. if provision fails or to up/down containers manually:
```cd /project
sudo docker-compose build
sudo docker-compose up
# this will output tons of errors due to the lack of healthchecks - all services fail until rabbit is up and running
``` 
5. You need to seed the DB (or it will load forever) using: 
```
sudo docker exec -it project_api_1 sh
# here you might need to change <project> to other string, it is based on the name of the folder
npx sequelize-cli db:migrate
npx sequelize-cli db:seed:all
```

open http://localhost:3000
