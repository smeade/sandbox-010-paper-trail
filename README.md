## Readme

An application to experiment with the PaperTrail gem for versioning.

Demo Heroku app is [here](http://sandbox-010-paper-trail.herokuapp.com/).

Demo of reverting versions is [here](http://sandbox-010-paper-trail.herokuapp.com/products/1).

## Notes

When first adding PaperTrail to your Rails project:

1. Add PaperTrail to your `Gemfile`.

    `gem 'paper_trail', '~> 3.0.5'`

2. Generate a migration which will add a `versions` table to your database.

    `bundle exec rails generate paper_trail:install`

3. Run the migration.

    `bundle exec rake db:migrate`

4. Add `has_paper_trail` to the models you want to track.

[source](https://github.com/airblade/paper_trail#rails-3--4)

## Getting Started with this codebase

1. Install gems:

        bundle install

2. Create the database:

        rake db:create

4. Migrate the database:

        rake db:migrate

5. Start the web server:

        rails server

5. Using a browser, go to [http://localhost:3000](http://localhost:3000) and you'll see:
"Listing products"

6. Create a Product.

7. Edit the product a few times.

8. Show the product to see its versions.

9. Click "Restore to this Version" to restore a version.

## Running the test suite

        rake

## Deploying to Heroku

1. Install the [Heroku toolbelt](https://devcenter.heroku.com/articles/getting-started-with-rails4#local-workstation-setup) on local workstation (if not already installed).

2. Create the [Heroku app](https://devcenter.heroku.com/articles/getting-started-with-rails4#deploy-your-application-to-heroku) (if not already created).

        heroku apps:create

3. [Deploy](https://devcenter.heroku.com/articles/git#deploying-code)

        git push heroku master

4. Run migrations

        heroku run rake db:migrate

5. Visit the deployed app

        heroku open

