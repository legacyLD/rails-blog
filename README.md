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
