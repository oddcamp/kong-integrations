# Kong Integrations
A web app that provides Tictail products as csv for multiple consumers.
We currently support Prisjakt and Pricerunner.

## Tictail -> Pricerunner
[http://integrations.konginitiative.com/pricerunner/products.csv](http://integrations.konginitiative.com/pricerunner/products.csv)

## Tictail -> Prisjakt
[http://integrations.konginitiative.com/prisjakt/products.csv](http://integrations.konginitiative.com/prisjakt/products.csv)

## Environments

Production:

	git remote add heroku git@heroku.com:kong-integrations.git

## Env variables
You'll need to set TICTAIL_STORE_ID environment variable.
You can find it [here](https://tictail.com/developers/documentation/api-reference/) when you're signed in to your Tictail account.

## Important
In order to import category (Kategori) and manufacturer (Tillverkare) to Prisjakt correctly, you'll need to stick with this convention:
Since these are mandatory for Prisjakt import, every product needs to have exactly 2 categories, the order is important!
1st - category name itself, e.g.: "Boards"
2nd - manufacturer, e.g.: "Elan"


## Running locally

1. ``bundle install``
2. ``bundle exec rails s``

## Deploy to production

Only deploy from master branch.

Deploy to production with:

	git push heroku master


## Using the Heroku toolbelt

When using for example

	heroku restart

We must add a flag for which app we want to restart. Like this:

	heroku restart --app kong-integrations
