# Monday

## Migration Challenge
* https://github.com/brianburridge/monitor_assignments/blob/master/db/migrate/20141010183859_create_students.rb
* What will be the name of the table created? _students_
* In this migration, how many columns will be in the created table? _5_

* https://github.com/brianburridge/monitor_assignments/blob/master/db/migrate/20141018154949_add_github_username_to_students.rb
* What will this migration do? _add a field called 'github_username' to students_

* https://github.com/brianburridge/monitor_assignments/blob/master/db/migrate/20141023014217_remove_html_url_from_student_assignments.rb
* What will this migration do? _remove the field 'html_url' from the student assignments table_

* https://github.com/brianburridge/monitor_assignments/blob/master/db/migrate/20141202204308_add_cohort_reference_to_assignments.rb
* What is the name of the column that will be added to the assignments table? _cohort_id_


## Using the web console
* already installed, see Gemfile
* https://github.com/rails/web-console

## Heroku installation
* Procfile
* thin gem
* Heroku provided gem to make assets work on Heroku

## Heroku: see the logs

    heroku logs
    heroku logs --tail
    heroku logs -n 500

## Seed files
* http://railscasts.com/episodes/179-seed-data
* rake task
* [Faker gem](https://github.com/stympy/faker)
* Create a seed file in class in first_app

## Image uploading - Part 1
* Purposefully did not refresh my memory on how this works so I can struggle through it with you. Add to first_app (movie manger).
* [Carrierwave](https://github.com/carrierwaveuploader/carrierwave)
* Let's build a new Rails app to manage photos
* rails g scaffold photo title:string

## Assignment 36: Seed Data and Image Uploading
* Add some seed data to assignment 35 using the Faker gem.
* Add image upload support to your Rails app from assignment 35, using [CarrierWave gem](https://github.com/carrierwaveuploader/carrierwave).
* You can add image uploads to any existing models in that app.
* For this assignment, use _file_ storage.
* Your user should be able to browse for a local image and upload it along with your other model attributes in the form.
* The uploaded images should show on both the index page (thumbnail size) and the show page (a larger size).
* Feel free to experiment with sizes and versions.
* Please include the URL to your Github repo for this app in a comment in this issue.
* Note: do not deploy this to Heroku yet

# Tuesday

## Three areas to connect objects with relationships or associations
* Database: foreign keys
* Models: association names
* Views: HTML forms and UI
* Controllers and Routes: Resources, URLs

## Checkboxes for has_many
* Create Genre model


    be rails g model Genre name:string


* Add genre's to seed


    Genre.where(name: g).first_or_create


* Create many-to-many join model: Genreizations


    be rails g model Genreization movie:references genre:references


* Create has_many in Movie to Genre
* Show usage in console:


    m = Movie.first
    m.genre_ids
    m.genre_ids = [1,2]
    # auto does inserts and deletes
    m.genres

* Create HTML form with checkboxes for all genre's:


    <div class="field">
      <%= hidden_field_tag "movie[genre_ids][]", nil %>
      <% Genre.all.each do |genre| %>
        <%= check_box_tag "movie[genre_ids][]", genre.id, @movie.genre_ids.include?(genre.id), id: dom_id(genre) %>
        <%= label_tag dom_id(genre), genre.name %><br>
      <% end %>
    </div>

* In order to whitelist a parameter that is an array (multiple values), we must use this notation in the controller: `genre_ids: []`


## Image uploading - S3
* Everyone sign up for an S3 account: http://aws.amazon.com/s3/
* Go to the Identity and Access Management section
* We are going to create a user (noting the access keys)
* Then create a group with S3 access
* Then assign the group to that user

## Using ENV vars locally
* https://github.com/bkeepers/dotenv
* add to Gemfile: `gem 'dotenv-rails'`
* create a _.env_ file in root
* add _.env_ to our ignore


    S3_BUCKET=movieuploads
    S3_KEY=your_key
    S3_SECRET_KEY=a_secret_key

## Using CarrierWave with Fog for S3
* [CarrierWave, Fog, S3](https://github.com/carrierwaveuploader/carrierwave#using-amazon-s3)
* Add `gem "fog"`
* Create file _fog.rb_ in _config/initializers_ with this basic content:


    CarrierWave.configure do |config|
      config.fog_credentials = {
          :provider               => 'AWS',                        # required
          :aws_access_key_id      => ENV['S3_KEY'],                        # required
          :aws_secret_access_key  => ENV['S3_SECRET_KEY'],
          :endpoint               => 'http://s3.amazonaws.com'
      }
      config.fog_directory = ENV['S3_BUCKET']
    end

* In Uploader, change storage to _fog_ and change the default directory (the default one throws them all in one folder, not easy to find files)


## Deploying to Heroku and setting up vars there
* heroku config

## Assignment 37
* Convert the app from assignment 36 to use [Amazon S3, via Fog](https://github.com/carrierwaveuploader/carrierwave#using-amazon-s3), instead of local file storage.
* Remember to use the [dotenv gem](https://github.com/bkeepers/dotenv) and `heroku config` so you aren't storing your S3 private access keys in GitHub
* Deploy to Heroku (and GitHub as always)
* Please provide the link to the repo AND your Heroku app in a comment here.

## Assignment 38
* Note: This is a bonus assignment for those all caught up on homework.
* Using the app from 36 and 37, add checkboxes to a form for a many to many relationship.
* Review the [Railscast for this topic](http://railscasts.com/episodes/17-habtm-checkboxes-revised
)

# Wednesday

## Users
* Create a User model
* Modify existing models to belongs to User (use movie rating; change from person_id to user_id)
* Create a scaffold for movie ratings, link to from my movie page
* Add `current_user` method to application controller:


    def current_user
      @current_user = User.where(name: 'Guest')
    end

* Add before filter so it's always set
* When movie rating is created, set the user
* Only show the user's movie ratings on the index page

## Assignment 39
* Modify the app from assignment 36-38, to have a User model
* Also, modify any models that should be scoped to a User, to belong to a user object
* Only show the user's records when in that context
* Create a User guest record in the seed file
* Default your app to always use that User
* Modify at least one model's create to be automatically associated with that User when it's created.
* Deploy to Heroku
* Paste the link to your Heroku app in a comment here for my review

## Active Admin
* Been creating scaffoldings which look like admin sections. Don't normally have sections like that on a web site.
* Easier way to create admin sections if that's what you really need
* https://github.com/activeadmin/activeadmin

### Show admin.commendablekids.com
* Only an active admin app
* https://github.com/brianburridge/ckids-admin/

### Setup
* Add to Gemfile: `gem 'activeadmin', github: 'activeadmin'`
* https://github.com/activeadmin/activeadmin/blob/master/docs/0-installation.md
* Do install, then generate some resources.
* Show generated classes
* Add the permitted params.


### Customizing
* Note to self: see movie.rb in Curriculum/Code, with samples
* Can customize index, show, edit, new
* For the forms, it uses [Formtastic](https://github.com/justinfrench/formtastic)
* If all else fails, can render a partial you create in full ERB
* Can change menu order, nest menus, limit actions (don't allow an edit or create)

## Assignment 40
* Add [ActiveAdmin](https://github.com/activeadmin/activeadmin) to your current application
* Review the [documentation](https://github.com/activeadmin/activeadmin/blob/master/docs/0-installation.md)
* Create an active admin resource for every model in your app
* Do some customization
* Ensure all forms save and allow the user to set the relationships
* Deploy to Heroku
* Paste the link to your Heroku app in a comment here for my review

# Thursday

## Pagination with Kaminari
* [Kaminari](https://github.com/amatsuda/kaminari)
* `Movie.page(params[:page]).per(15)`
* `<%= paginate @movies %>`

## Setup kaminari for bootstrap
* https://github.com/amatsuda/kaminari_themes
* https://github.com/amatsuda/kaminari
* https://github.com/matenia/bootstrap-kaminari-views
* https://github.com/gabetax/twitter-bootstrap-kaminari-views

## Show using bootstrap glyphs
* as icons on the actions of my CRUD
* http://getbootstrap.com/components/#glyphicons

## REST
* What is it?
* 7 actions providing the basic CRUD operations
* Designed to create a pattern for APIs

### Adding non-REST routes. Example: search
* How to add a search
* Add search to first_app for movies

    def search
      @search = params[:q]
      @movies = Movie.where("title like ?", "%#{@search}%")
      render 'movies/index'
    end


    resources :movies do
      collection do
        get :search
      end
    end

* You know how to create a form that allows the user to enter the search text (like searching for the movie name)

## Assignment 41: Read about REST and routes
* Read [Understanding REST in Rails 3
](http://old.thoughtsincomputation.com/posts/understanding-rest-in-rails-3)
* Read the [Rails Routing Guide](http://guides.rubyonrails.org/routing.html)

## Dan Denney on HAML

## Assignment 42: Build Pinterest
* Should have these models: User, Pin, Board
* The home page should show "pins" from all users, and not in a table format but a grid
* Should use pagination with Kaminari on the pin page
* User should be able to create new pins, uploading an image to represent them.
* A Pin should have these attributes and belong to the user who added it: title, description, board, url, pin image
* A user should be able to create boards to pin items to. Every pin belongs to one board. A board has a name and belongs to a user.
* When the user clicks on a pin from the home page, it can either pop the pin up like Pinterest does, or go to a separate show page.
* There should be a search form to search the descriptions of the pins and show those matching (across all users).
* There should be a nav providing links to the home page, the user's pins, and the user's boards
* Bonus: make it look amazing!
