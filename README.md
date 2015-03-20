Hamstermom.com API
==================

[![Build Status](https://travis-ci.org/MelizzaP/hmom-api.svg?branch=master)](https://travis-ci.org/MelizzaP/hmom-api)


This is the backend for a webcomic.  It will allow owners to upload images and captions that will be published on hamstermom.com.  

---

### Technologies Used
  * Server-side: Ruby on Rails, Devise, PostgreSQL
  * Client-side: JavaScript, JQuery
  * Testing: Rspec, TravisCI
  * Deployment: Digital Ocean

### Installation
Run the following commands in your terminal
```
  git clone git@github.com:MelizzaP/hmom-api.git hmom-api
  cd hmom-api
  bundle install
```
Create a database by running
```
  bundle exec rake db:create db:migrate db:seed
```
  
Run locally(localhost:3000)
```
  rails server
```
  
Run test suite
```
  bundle exec rspec
```
  
The app is also currently at (https://hamstermom.com)  
  
---
Requirements
------------

#### Ruby version
2.1.3p242 (2014-09-19 revision 47630)

#### Dependencies
```
  byebug
  capybara
  coffee-rails (~> 4.1.0)
  database_cleaner
  devise
  factory_girl_rails
  jbuilder (~> 2.0)
  jquery-rails
  pg
  rails (= 4.2.0)
  rails_12factor
  rake
  rspec-rails
  sass-rails (~> 5.0)
  sdoc (~> 0.4.0)
  spring
  turbolinks
  uglifier (>= 1.3.0)
  web-console (~> 2.0)
```  

---
Plans for the Future
--------------------
* generate user comments
* allow admin to upload comics on the front end
* build out front end