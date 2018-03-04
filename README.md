# Sinatra Portfolio Project

## Overview

<p class='util--hide'>Welcome to the “Sinatra Portfolio Project” program by Richard Burd.  This is my submission for <a href='https://github.com/learn-co-students/sinatra-cms-app-assessment-v-000'>this project here</a> on Learn.co.</p> This program is an online library catalog for the Burd Antiquities Library.  The catalog contains a lot of information about famous books & authors from the period of Late Antiquity up until the Renaissance era.  You can sign in as a user and add books to the library if you wish...a user can only create, edit, and delete books they themselves created in the first place.</p>

## Cool Graphics

<p class='util--hide'> A process flow illustration showing the object models and their relations is available in the programs main directory (in SVG format) as well as in png format <a href='https://i.imgur.com/1xYHSc0.png'>here</a> on this readme file.</p>

## About This Program

As I began to build out all the controllers and views, and as I got them to display the data they way I wanted them to in the browser, I began to realize that, as with my first portfolio project, I was designing myself into a Pandora’s box…which is pretty much how you learn to code…I know.  The problem is, when I finished the create, edit, and delete functionality for the books, I already had a program that was <i>way</i> more complicated than anything in the Sinatra labs I had been working with.  Additionally, the code was beginning to get smelly as it contained a lot of repetition in the embedded Ruby (erb) files.  Unfortunately, I don’t yet know how to abstract this out like I would with pure Ruby code.  For now, the current project meets all the requirements for the portfolio project assessment as per the `spec.md` file located in the main directory of this Git repo.

## Install instructions

Clone this repo into your IDE and run `bundle install`.  After that, run `shotgun` to run your server...copy & paste the domain into a web browser URL and go from there.

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

If you would like to extend the functionality of the program by building out the functionality for creation, editing, and deletion of authors...well that would be awesome.  Just fork a copy and have at it.  The ./author directory is already scaffolded out for you and if you want to expand the program functionality out to allow for the creation, editing, and deletion of genres, locations, and languages as well...just follow the blueprint already established for the Book class.  I don't have any tests to pass for this program, but if you just peruse through the web app and check out the limited functionality to make sure everything's working then you should see any bugs generated in your program.

## License Link

<p class='util--hide'> A link to the license for this code is available <a href='https://www.gnu.org/licenses/gpl-3.0.en.html'>here</a> per instructions on the spec.md file located <a href='https://github.com/Richard-Burd/sinatra-portfolio-project/blob/master/spec.md'>here</a> in the main directory of this GitHub repository.  I'm not sure why this is needed since the Github repo already has a license listed in the upper-right hand side of the main repo page, buy I also wonder if anybody from Flatiron School will ever even read any of this.  In the military we would see this as a potential <i>attention-to-detail</i> test that we had better pay attention to, but I think the Flatiron instructors are just too nice to be playing any mind tricks like that on us.</p>
