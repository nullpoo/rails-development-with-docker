# Rails development with docker

```
docker-compose build
docker-compose run web bundle install
docker-compose run web bundle exec rails new . --force --database=postgresql --skip-bundle
```

Add database configuration

``config/database.yml`` default section add this.

```
username: <%= ENV['DB_USERNAME'] %>
password: <%= ENV['DB_PASSWORD'] %>
host: <%= ENV['DB_HOST'] %>
```

```
docker-compose build
docker-compose run web bundle exec rake db:setup db:migrate
docker-compose up
```
