# Sinatra Portfolio Project

## Overview

<p class='util--hide'>Welcome to the “Sinatra Portfolio Project” program by Richard Burd.  This is my submission for <a href='https://github.com/learn-co-students/sinatra-cms-app-assessment-v-000'>this project here</a> on Learn.co.</p>

## About This Program

The purpose will go here

## Install instructions

The instructions will be here

### Project File Structure
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

## Contributors Guide

There will be a guide here

## Cool Graphics

<p class='util--hide'> The diagram should go on imgur here: <a https://imgur.com/cYaObY2'>available here</a> on this readme file.</p>
