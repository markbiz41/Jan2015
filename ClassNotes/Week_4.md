# Monday

## Comfort Level cards

## Rails Quiz 1
https://gist.github.com/brianburridge/1cbf637b1c5120273b6b

## Review

### Overriding initializers and requiring values to create an object
* Everyone struggled with it.

### Controllers: why have more than one?

## The Rails console
* Same as the irb, except Rails loads all the libraries it uses automatically. Also connects to the database. Places you in a console with your app loaded.

## Methods of input
* gets at command line
* request params via HTTP GET method on URL. Example: the rotten tomato API and your movie query app
* next: HTML Forms, both GET and POST

## HTML Forms
* https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form
* Build the enter name form as a get
* Add the getter for the controller, but submit without the post route to show what happens
* Once everything is in place, the authenticity token will fail. Show Rails form helper:
* http://guides.rubyonrails.org/form_helpers.html
* Show the authenticity token automatically built
* Difference between POST and GET. POST normally for forms.
* Walk through the guide, section 1 only.
* Show params and HTTP method in logs
* Show getting parameter in controller
* Show label, text field tag and submit tag from guide
* Show `rake routes` and using route names instead of URLs. This lets Rails do more for us and allows us to change the route only in the routes file and it will be updated everywhere.
* Routing: from URL to controller/action and the other way when generating form actions and links

## Using Bootstrap to improve our form
* http://getbootstrap.com/css/#forms

## Assignment 32: Movie Query app form - in class
* Change your movie query app and add an HTML form to prompt the user for a movie title and submit to the controller/action you already have.
* You can still use the HTTP GET method in this case, because we want the old way of passing it in the request url to work.
* Use bootstrap to improve the look of the form.
* Refer to [Bootstrap form stylings](http://getbootstrap.com/css/#forms)
* Refer to [Rails form helpers](http://guides.rubyonrails.org/form_helpers.html)

#### _End week 4 / Monday_

# Reminder to use Rails tag helpers whenever possible:
* images
* anchor/href tags

# Databases
* What are they? How do they work?
* Diagram
* tables
* sql
* [Install postgres](http://postgresapp.com/)
* Get one Rails app running with it
* `rake -T db`
* `rake db:create`
* Does web app run?

# What is a model? Generating a model
* What is activerecord? http://guides.rubyonrails.org/active_record_basics.html
* CRUD
* data types: http://jasonshultz.com/what-are-the-rails-4-activerecord-migration-datatypes/
* rails generate model Person name:string birthdate:date
* look at the migration
* http://guides.rubyonrails.org/migrations.html
* look at several of my old migrations
* rake db:migrate
* create records in the rails console
* load records back

# Annotate models gem
* https://github.com/ctran/annotate_models
* Install the gem and bundle
* Optionally, generate a config file to change annotation settings: `rails g annotate:install`

# Generate a scaffold
* what is a scaffold?
* rails generate scaffold Movie title:string plot:text release_year:integer poster_image:string rating:string imdb_link:string

# Assignment 33
* Read about [the available data types](http://jasonshultz.com/what-are-the-rails-4-activerecord-migration-datatypes/)
* Read about [migrations](http://guides.rubyonrails.org/migrations.html)
* Review [ActiveRecord basics](http://guides.rubyonrails.org/active_record_basics.html)
* Read the generate section of [this guide](http://guides.rubyonrails.org/command_line.html#rails-generate). Note: this will review creating scaffolds
* https://github.com/ctran/annotate_models
* Create a new rails app and a scaffold for any kind of object you would like to track in your app: People, Movies, Books, Beer, etc.
* Present the user with a home page telling them what your site is "tracking", with a link to the first CRUD page.
* User should be able to create, update, delete and list the items they have created.
* Refer to [Annotate gem](https://github.com/ctran/annotate_models)
* Install annotate gem and run it on your models
* Push the new Rails app to Github

#### _End week 4 / Tuesday_

## Show destroying something generated
* `rails g scaffold Car name:string`
* `rails d scaffold Car`

## try & ternary
* http://apidock.com/rails/Object/try
* Example

    p = Person.new
    p.name.upcase if p.name.present?
    # Another option is the Ternary: condition, then true or false action
    p.name ? p.name.upcase : nil
    # Use the try
    p.name.try(:upcase)

# Show using an image locally
* Put one in my first_app

# Show Bootstrap in a CRUD
* Remind by adding bootstrap styles to index table and button.
* Can also do forms.

# Show validations
* Walk through validation examples, implementing with my Person object. Add extra fields using migrations if necessary.

# Show connecting two tables together with foreign keys and using in the form
* diagram foreign_keys
* Rails uses `references` to indicate foreign keys to another table/model
* rails g model MovieRating person:references movie:references
* rake db:migrate
* add belongs_to :person in MovieRating and belongs_to :movie
* add has_many :movie_ratings to Person and to Movie

# Assignment 34
* [Read Active Record Validations](http://guides.rubyonrails.org/active_record_validations.html)
* [Read Active Record Associations](http://guides.rubyonrails.org/association_basics.html)
* Continuing with your app from assignment 33, add a second model (use the migration generator) and use a _reference_ and _belongs_to/has_many_ relationship.
* Also add at least three validations between the two models.
* Test your model relationships in the rails console to be sure they work.

#### _End week 4 / Wednesday_

# Rails app name is a class
* config/application.rb
* which means you can't use your app name again as another class

# Ability to meet all the requirements
* One thing I'm looking for, particularly now as we enter week 5, is your ability to meet all the requirements in your assignment. This is exactly like getting requirements from your manager or client. It will be expected that you meet them all as defined, so it's important you do the same now. Before submitting your assignment for my review, go over each item in the assignment and be sure you've covered it.

# In a has_many/belongs_to the belongs_to side is always in the child as it refers to it's parent, and is where the foreign key goes
* The foreign key identifies which object it belongs to
* We only need it on one side
* As well, when there are many of an association there cannot be one foreign_key

# has_one/belongs_to
* http://guides.rubyonrails.org/association_basics.html

# has_many :through
* FavoriteMovie as an example
* has_many :movies, through: :favorite_movies

# Besides creating tables, migrations can:
* http://guides.rubyonrails.org/migrations.html
* rename columns
* add columns
* remove columns
* change columns

## Adding a column
* Use the proper naming pattern
* `rails g migration AddPersonToMovies person:belongs_to`

# Dependent Destroy
* What happens when we delete a parent object?
* Add: `dependent: :destroy`

# Add average rating for a movie
* Method in movie class: `movie_ratings.sum(:rating) / movie_ratings.count`
* Show rating on the index page


# Using associations in our views


    <div class="field">
      <%= f.label :person %><br>
      <%= f.select :person_id, Person.all.collect {|p| [ p.name, p.id ] }, {include_blank: 'None'} %>
    </div>

* Unpermitted param message in logs. See controller.

# Deploying to Heroku
* Note, the app we use for sample should be the one Heroku supplies because they may not have a Rails app in its own repository
* working with our original Rails app
* create a Heroku account
* Then follow these steps: https://devcenter.heroku.com/articles/getting-started-with-ruby#introduction

# Assignment 35
* Create a new Rails app, in it's own folder (not within the previous _Assignments_ folder)
* This new Rails app should have three models. Two of them should have scaffolds. They should all have associations, so pick three models that are related in some way.
* Ensure all associations can be set within your Rails app views (no longer just in the console)
* On the index view of a parent model, show the count of children it has (the has_many relationship). Example: how many books does that library have?
* Add a _Procfile_ to your app with this line: `web: bundle exec thin start -p $PORT` (note: this is to get it working on Heroku)
* Add the following to your Gemfile (please read the comments to remind yourself why each Gem is necessary):

    # User the 'thin' server instead of the default webrick
    gem 'thin'

    # Use postgres and the Heroku rails gem for Heroku
    group :production do
      gem 'rails_12factor'
    end


* Deploy to Heroku
* When you submit the assignment, paste the URL to your Heroku app in a comment within this issue.
