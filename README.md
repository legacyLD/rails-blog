# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# Homework Questions:

## Part Zero
- What are some things the terminal command rails new blog does?
  - sets up a new project with all the files you will need to make a basic ruby project
  - installs all the gem dependencies you will need with a bundle install
- What does the command bundle do?
  - installs AND/OR updates the gem dependencies you are using in your project and tells you the version you are using
- What is config/routes.rb for?
  - this is where we configure and tell Ruby the verbs, routes and view/templates we want to use, in other words, where we specify our RESTful routes
- What is app/views/layouts/application.html.erb doing for the project?
  This is where we use HTML and embedded Ruby what data to show and how to structure it
- What is the Gemfile for?
  - this tells the bundler which gem files to install and if you change it, you must run bundle again to update the dependencies

## Part One
- What is a "resource"?
- What does it mean that ActiveRecord is an ORM framework?
- What is a migration? How is it related to the app's database schema (db/schema.rb)?
- What are some methods we can use to CRUD resources for a model, from inside a controller file? It may help to look at controller app/controllers/articles_controller.rb, and section 5 of the ActiveRecord Rails Guide.

## Part Two
- In Rails RESTFUL routes, the index, show, new, and edit routes render HTML files. What should a user see on each of - these pages?
- What is the difference between a "layout" template and a "partial" template? Give an example of when you've used each.
- Examine the HTML created by a form_for helper in your code. Why should we use form_for and helpers like f.text_area or f.email_field instead of writing Rails forms by hand?
- How do we make data from the controller available in the view?

## Questions
- in section 5.5 what does the following mean?
  - Because you're working in the development environment by default, this command will apply to the database defined in the development section of your config/database.yml file. If you would like to execute migrations in another environment, for instance in production, you must explicitly pass it when invoking the command: bin/rails db:migrate RAILS_ENV=production.
- not sure what this means, read further later
  - Why do you have to bother? The ability to grab and automatically assign all controller parameters to your model in one shot makes the programmer's job easier, but this convenience also allows malicious use. What if a request to the server was crafted to look like a new article form submit but also included extra fields with values that violated your application's integrity? They would be 'mass assigned' into your model and then into the database along with the good stuff - potentially breaking your application or worse.

  - We have to whitelist our controller parameters to prevent wrongful mass assignment. In this case, we want to both allow and require the title and text parameters for valid use of create. The syntax for this introduces require and permit. The change will involve one line in the create action:
- ???
  - The delete routing method should be used for routes that destroy resources. If this was left as a typical get route, it could be possible for people to craft malicious URLs like this:

  - <a href='http://example.com/articles/1/destroy'>look at this cat!</a>


## Things to Remember
- Class names in Ruby must begin with a capital letter.
- When we write an index action, the usual practice is to place it as the first method in the controller.
- Private must be at the very bottom: "The destroy method is generally the last CRUD action in the controller, and like the other public CRUD actions, it must be placed before any private or protected methods." This will cause an error if you list private before anything else
- If you want to link to an action in the same controller, you don't need to specify the :controller option, as Rails will use the current controller by default.
- In development mode (which is what you're working in by default), Rails reloads your application with every browser request, so there's no need to stop and restart the web server when a change is made.
-
