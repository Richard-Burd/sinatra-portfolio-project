# Sinatra Portfolio Project

## Overview

This program is an online library catalog for the Burd Antiquities Library.  The catalog contains a lot of information about famous books & authors from the period of Late Antiquity up until the Renaissance era.  This app enables a user to sign in and add books to the library.&nbsp; A user can create, edit, and delete their own books, and see all of the other book entries created by other users.

## Cool Graphics

Here is an illustration showing the object models and their relations:
<a href="https://imgur.com/jqIu1pD.jpg"><img src="https://i.imgur.com/jqIu1pD.jpg" title="source: imgur.com" /></a>

## About This Project

This project uses the [Sinatra](http://sinatrarb.com/) library, a _microframework_ written in Ruby and used to quickly build web applications.  This project was my portfolio project submittal for this project [here](https://github.com/learn-co-students/sinatra-cms-app-assessment-v-000) in the Flatiron School Web Development curriculum.

## Installation instructions

Clone this repo into your local environment and run the following commands:

1. `$ gem install bundler` ... to install [Bundler](https://bundler.io/)
1. `$ bundle install` ... to install the [Ruby Gems](https://rubygems.org/).
2. `$ shotgun` ... to boot up your server

Next, copy the domain (displayed in the command prompt)  and paste it into a web browser and you should see the homepage.

## Project File Structure
```
├── ave_
├── Gemfile
├── Gemfile.lock
├── LICENSE.md
├── README.md
├── Rakefile
├── t.id
├── app
│   ├── controllers
│   │   ├── application_controller.rb
│   │   ├── authors_controller.rb
│   │   ├── books_controller.rb
│   │   ├── genres_controller.rb
│   │   ├── languages_controller.rb
│   │   ├── locations_controller.rb
│   │   ├── periods_controller.rb
│   │   └── users_controller.rb
│   ├── models
│   │   ├── concearns
│   │   │   ├── slugifiable.rb
│   │   │   └── unknown_author.rb
│   │   ├── author_location.rb
│   │   ├── author_period.rb
│   │   ├── author.rb
│   │   ├── book_genre.rb
│   │   ├── book_language.rb
│   │   ├── book.rb
│   │   ├── genre.rb
│   │   ├── language.rb
│   │   ├── location.rb
│   │   ├── period.rb
│   │   └── user.rb
│   └── views
│       ├──authors
│       │   ├── authors.erb
│       │   ├── create_author.erb
│       │   ├── edit_author.rb
│       │   └── show_author.rb
│       ├── books
│       │   ├── book.erb
│       │   ├── create_book.erb
│       │   ├── edit_book.rb
│       │   └── show_author.rb
│       ├── users
│       │   ├── create_user.erb
│       │   ├── login_error.erb
│       │   ├── login.rb
│       │   └── show.rb
│       ├── display_validation_failure.erb
│       ├── genres.erb
│       ├── index.erb
│       ├── languages.erb
│       ├── layout.erb
│       ├── library_layout.erb
│       ├── library.erb
│       ├── locations.erb
│       └── periods.erb
├── config
│   └── environment.rb
├── config.ru
└── db
    ├── development.sqlite
    ├── migrate
    │   ├── 20180126172118_create_authors.rb
    │   ├── 20180126172135_create_books.rb
    │   ├── 20180126172150_create_languages.rb
    │   ├── 20180126172215_create_book_languages.rb
    │   ├── 20180126172230_create_users.rb
    │   ├── 20180126172256_create_author_periods.rb
    │   ├── 20180126172437_create_genres.rb
    │   ├── 20180126172452_create_periods.rb
    │   ├── 20180126172511_create_locations.rb
    │   ├── 20180126172536_create_author_locations.rb
    │   └── 20180128042726_create_book_genres.rb
    ├── schema.rb
    └── seeds.rb
```

## License Link

<p class='util--hide'> A link to the license for this code is available <a href='https://www.gnu.org/licenses/gpl-3.0.en.html'>here</a> per instructions on the spec.md file located <a href='https://github.com/Richard-Burd/sinatra-portfolio-project/blob/master/spec.md'>here</a> in the main directory of the GitHub repository.
