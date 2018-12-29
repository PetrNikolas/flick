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

```bash
% bundle exec rake
```

How to run the development console:

```bash
% bundle exec hanami console
```

How to run the development server:

```bash
% bundle exec hanami server
```

How to prepare (create and migrate) DB for `development` and `test` environments:

```bash
% bundle exec hanami db prepare

% HANAMI_ENV=test bundle exec hanami db prepare
```

## Resources

Explore Hanami [guides](http://hanamirb.org/guides/), [API docs](http://docs.hanamirb.org/1.3.0/), or jump in [chat](http://chat.hanamirb.org) for help. Enjoy! 🌸

## Deployment

* Mainly for Heroku hosting.
* See [documentation](./DEPLOYMENT.md).
