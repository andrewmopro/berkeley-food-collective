# README

![Build Status](https://github.com/saasbook/berkeley-food-collective/actions/workflows/ci.yml/badge.svg)
<a href="https://codeclimate.com/github/andrewmopro/berkeley-food-collective/test_coverage"><img src="https://api.codeclimate.com/v1/badges/7cbdee3476d97b169fe9/test_coverage" /></a>
<a href="https://codeclimate.com/github/andrewmopro/berkeley-food-collective/maintainability"><img src="https://api.codeclimate.com/v1/badges/7cbdee3476d97b169fe9/maintainability" /></a>
[![Bluejay Dashboard](https://img.shields.io/badge/Bluejay-Dashboard_BFC-blue.svg)](http://dashboard.bluejay.governify.io/dashboard/script/dashboardLoader.js?dashboardURL=https://reporter.bluejay.governify.io/api/v4/dashboards/tpa-CS169L-22-GH-saasbook_berkeley-food-collective/main)
[![Pivotal Tracker](https://github.com/saasbook/berkeley-food-collective/blob/main/app/assets/images/pivotal_tracker_logo.png)](https://pivotaltracker.com/projects/2553424)

## Main staging server

https://berkeley-food-collective.herokuapp.com/

## Repository Setup

- Fork the repository and clone it locally
- Make sure you have Ruby version 3.0.3 installed and run `rvm use 3.0.3` to switch to it
- Run `bundle install --without production` to install necessary gems
- Setup and seed the database by running `rails db:migrate` and `rails db:seed`


## Run tests locally

- To run RSpec tests, run `bundle exec rspec`
- To run Cucumber tests, run `bundle exec cucumber`


## Deploy to Heroku

- run `heroku create -a app-name` to create empty application Heroku
- run `git add .` and `git commit -m "[message]"` to prepare local changes
- run `git push heroku main` to push the code to Heroku

## Some Dependencies

- This app heavily relies on Airtable integration. The `airtable` gem is used to make API calls to Airtable https://github.com/Airtable/airtable-ruby
- This is the recipe used to manage the API key http://saasbook.github.io/courseware/devops/managing-api-keys.html
- The `figaro` gem is used to securely store an Airtable API key and access it as the environment variable `airtable_api_key` https://github.com/laserlemon/figaro
- The passphrase to decrypt `config/application.yml.asc` is stored as a Github secret in the golden repository. The unencrypted file may be needed to run the app locally  
