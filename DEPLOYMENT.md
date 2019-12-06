# Deploy to Heroku

You need logged in to the Heroku account.

* [Tutorial](https://www.codecademy.com/articles/deploy-rails-to-heroku)

## Staging deploy

* Run `git push staging master`.
  If you need migrate DB or seed new data, run commands from web console --> [here](https://dashboard.heroku.com/apps/xfnproject-staging/activity?web-console=xfnproject-staging).

## Production deploy

* Run `git push heroku master`.
  If you need migrate DB or seed new data, run these commands:
* Run `heroku run rake db:migrate`.
* Run `heroku run rake db:seed`.
