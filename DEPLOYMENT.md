# Deployment

## How to Deploy

* Assuming you have downloaded and installed the Heroku command-line utility and have initialized the app, you will need to tell Heroku to use both buildpacks via the command-line:

```shell
heroku buildpacks:set heroku/ruby
```

## CI/CD

All files are in `.ci` folder

### Gitlab CI

* You need configure `.gitlab-ci.yml` file with your Heroku credentials.

### Travis CI

* You need configure `.travis.yml` file with your Travis and Heroku credentials.