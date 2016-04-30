# Rails development with docker

```
docker-compose build
docker-compose run web bundle install
docker-compose run web bundle exec rails new . --force --database=postgresql --skip-bundle
```
