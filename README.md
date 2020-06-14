# Flick

Flick is a Rails development platform to generate, develop and deploy web applications and microservices. (Ruby, Ruby on Rails, Postgres, etc.)

- Version 0.0.3

## Table of Contents

- [Prerequisites](#prerequisites)
- [Project Setup](#project-setup)
- [Tools](#tools)
- [Deployment](#deployment)

## Prerequisites

- [Ruby](https://www.ruby-lang.org/en/downloads/)
- [Ruby on Rails](http://guides.rubyonrails.org/getting_started.html)
- [RVM](https://rvm.io/)
- [PostgreSQL DB](https://www.postgresql.org/docs/)

## Project Setup

- For production, you need to replace the asterisk with the URL of your client-side application in ./config/initializers/cors.rb file.

1. Clone or download this repo
2. Run `bundle install`
3. Run `rake db:create`
4. Run `bin/rails db:migrate RAILS_ENV=development`
5. Run `bin/rails db:seed RAILS_ENV=development`
6. Run `chmod +x scripts/*.bash`
7. Run `./scripts/install-hooks.bash`
8. Run `brew install overmind` (for MacOS users)
9. Run `overmind start`
10. Visit --> [http://localhost:5000/](http://localhost:5000/). That's it!.

### Maybe you need start postgres server

`brew services start postgresql`

Or, if you don't want/need a background service you can just run:
`pg_ctl -D /usr/local/var/postgres start`

## Tools

- Run `rubocop` for Ruby lint.
- Run `rubocop -a` for fixed some issues automatically.
- Run `reek .` for analyzing code.
- Run `brakeman` for static analysis and for security vulnerabilities.
- Run `rails_best_practices .` in root app directory. Helps to find unused methods, missing indexes into database tables and many other things.

### Annotate (aka AnnotateModels) usage

To annotate all your models, tests, fixtures, and factories:

```bash
cd /path/to/app
annotate
```

To annotate just your models, tests, and factories:

```bash
annotate --exclude fixtures
```

To annotate just your models:

```bash
annotate --exclude tests,fixtures,factories,serializers
```

To annotate routes.rb:

```bash
annotate --routes
```

To remove model/test/fixture/factory/serializer annotations:

```bash
annotate --delete
```

To remove routes.rb annotations:

```bash
annotate --routes --delete
```

To automatically annotate every time you run db:migrate, either run rails g annotate:install or add Annotate.load_tasks to your `Rakefile`. See the configuration in Rails section for more info.

## Deployment

Doc for deployment is [here.](./DEPLOYMENT.md)
