# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
        Sinatra Ruby gems are installed and working

- [x] Use ActiveRecord for storing information in a database
        ActiveRecord connection established on line 7 of './config/environment.rb'

- [x] Include more than one model class (list of model class names e.g. User, Post, Category)
        This project has 7 model classes (user, author, book, genre, language, location, period) and 4 join tables

- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Posts)
        The Author has many books...books have many languages, et. al.

- [x] Include user accounts
        There is a User model utilizing the bcrypt Ruby gem and the CreateUser migration includes a password_digest row


- [x] Ensure that users can't modify content created by other users
        The controller checks to ensure that the session ID
        matches the user ID before allowing any editing

- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
        Books belong to both the Users and Authors; and
        the Users can create, read, update, and destroy their own books

- [x] Include user input validations
        The application controller uses both 'logged_in?'
        and 'current_user' methods to validate a user

- [x] Display validation failures to user with error message (example form URL e.g. /posts/new)
        There is a 'display_validation_failure.erb' in
        the views directory as well as responses in the
        controllers letting the user know what went wrong

- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
        That's in the README.md

Confirm
- [x] You have a large number of small Git commits
        There are over 70 commits, each one is as narrow
        as possible so I can go back in time if some
        change ruins things

- [x] Your commit messages are meaningful
        They are meaningful indeed

- [x] You made the changes in a commit that relate to the commit message
        Otherwise they're not as helpful when backtracking

- [x] You don't include changes in a commit that aren't related to the commit message
        I'm sure there are a few of those here & there...afterall, the
        size a message can be is pretty small to describe everything I
        do in a 15 minute time period.
