# Flick
Flick is a fullstack development platform to generate, develop and deploy web applications and microservices. 

* Version 0.0.1

## Table of Contents
* [Prerequisites](#prerequisites)
* [Setup](#setup)
* [Resources](#resources)
* [Deployment](#deployment)
* [Docker](#docker)
* [Test API with Postman](#test-api-with-postman)

## Prerequisites
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Hanami](https://guides.hanamirb.org/introduction/getting-started/)
* [RVM](https://rvm.io/)
* [PostgreSQL](https://www.postgresql.org/docs/)

## Setup
How to run tests:
```
% bundle exec rake
```

How to run the development console:
```
% bundle exec hanami console
```

How to run the development server:
```
% bundle exec hanami server
```

How to prepare (create and migrate) DB for `development` and `test` environments:
```
% bundle exec hanami db prepare

% HANAMI_ENV=test bundle exec hanami db prepare
```

## Resources
Explore Hanami [guides](http://hanamirb.org/guides/), [API docs](http://docs.hanamirb.org/1.3.0/), or jump in [chat](http://chat.hanamirb.org) for help. Enjoy! 🌸

## Deployment
* Mainly for Heroku hosting.
* See [documentation](./DEPLOYMENT.md).

## Docker
* Basic configuration of Docker image is in Dockerfile and docker-compose.yml files in root of project.

### Docker Compose useful commands
```shell
# Builds, (re)creates, starts, and attaches to containers for a service:
$ docker-compose up

# Lists containers:
$ docker-compose ps

# Managing containers lifecycle:
$ docker-compose [start|stop|kill|restart|pause|unpause|rm] SERVICE

# Displays log output from services.:
$ docker-compose logs [SERVICE...]

# Run arbitrary commands in your services:
$ docker-compose exec SERVICE COMMAND

# Runs a one-time command against a service.:
$ docker-compose run SERVICE [COMMAND]

# Rebuilding a Docker Image:
$ docker-compose build [SERVICE...]
```

## Test API with Postman
### GraphQL
```shell
headers: "accept: application/json", "Authorization: token='OllBS57MeAW041dgR7xolpZaiO87kjnMVVK3qrtgtTbcBolB7K3TugZBuM6'"
method: POST

# Get all News
url: `/api/v1/graphql?query={allNews{id, title, content, description, errors}}`

# Get specific News 
url: `/api/v1/graphql?query={news(id:1){id, title, content, description, errors}}`
```

### REST
```shell
headers: "accept: application/json", "Authorization: token='OllBS57MeAW041dgR7xolpZaiO87kjnMVVK3qrtgtTbcBolB7K3TugZBuM6'"

# Get all News
url: `/api/v1/news`
method: GET

# Get specific News 
url: `/api/v1/news/:id`
method: GET

# Create News
url: `/api/v1/news`
method: POST
body: {
    "title": "Title",
    "description": "My news",
    "content": "News content"
}

# Update News 
url: `/api/v1/news/:id`
method: PUT
body: {
    "title": "New Title",
    "description": "My news",
    "content": "Updated content"
}

# Delete News 
url: `/api/v1/news/:id`
method: DELETE
```
