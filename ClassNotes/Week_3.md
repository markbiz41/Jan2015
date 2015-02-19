# Monday

# Index card, comfort level

# Quizzes

https://gist.github.com/brianburridge/80ffd52b3a9e8872d0c5

## Diagramming the parts of a class
1. What is the class name?
2. How many attributes are defined?
3. How many getters will be created automatically?
4. How many setters will be created automatically?
5. How many other instance methods are there?
6. How many class methods are there?

### Answers
1. User
2. 5
3. 4
4. 3
5. 2
6. 1

## Quiz 2: Array methods
https://gist.github.com/brianburridge/cb4099d7b882c5b98a67

1. Brian Brandon

## Review quizzes

# Show easy way to take MM-DD from user and add year on


    user_entered = "09-04"

    Date.strptime("2001-#{user_entered}", '%Y-%m-%d')

# Intro to Pry
* http://pryrepl.org/
* http://railscasts.com/episodes/280-pry-with-rails

## Use a '.' to run Unix commands
* Talk about confusion of being in Terminal, in Pry, running Linux commands

## TextMate used to be the standard for Rails development

## Use pry to show constants, instance methods, etc


    class Item
      QUERY_URL ="http://somewhere.com"

      attr_reader :item_id
      attr_writer :name
      attr_accessor :sale_price
      attr_accessor :upc
      attr_accessor :short_description

    end

    load 'item.rb'
    cd Item
    ls -c
    ls -M
    show-method

    item = Item.new
    cd item
    ls -i
    cd ..
    item.sale_price = 1.50
    cd item
    ls -i

# Assignment 25a: Pry
* Install Pry and play with it
* http://pryrepl.org/
* http://railscasts.com/episodes/280-pry-with-rails

# Talk about Classes/Objects
* helper methods that write code for us
* Ruby has some, Rails has a ton
* getter/setters are an example
* Write Vehicle class: type (air, land sea), propulsion (gas, electric, steam), year, make, model, color

# Assignment 25b: in class, pairing
* Design and code a Blog and Post class.
* These classes should model a system where a user can create a blog, which will have posts.
* A Blog can have a name, a user_name, and the collection of posts
* A Post can have a name, a summary, the body of the post, the published date, and a word count.
* Since both a blog and a post MUST have a name, override the initializer so that when an object of either class is created, a name must be supplied.


#### _End week 3 / Monday_

# In class, we will connect with Walmart API
* https://developer.walmartlabs.com/
* Walk through connecting, searching

# Assignment 26 - Walmart API for Invoices (Bonus)
* This is a bonus assignment for those who are caught up on your past homework and are able to finish the HTML/CSS assignment quickly.
* Take what we did in class with the Walmart API, and combine it with what you created in assignment 23
* Prompt the user to search for a product and allow the user to enter the product id (from the search results). For the product indicated, create an InvoiceItem object and add it to your Invoice object
* After the user adds a product to the invoice (using your InvoiceItem class), loop and allow them to search again
* When the user hits ENTER instead of a SEARCH term or a product id, print out the same result as in Assignment 23.
* Bonus to the Bonus: add a category attribute to your InvoiceItem and set it from the Walmart API. Include the category on the output invoice.


# Separation of Concerns, MVC pattern
* What is a design pattern? Why do we have them?
* SOC: Separation of Concerns pattern. (similar to OO and Encapsulation)
* It's an attempt to separate various parts of an application
* Model, View, Controller pattern. Not specific to Rails. Existed long before Rails, but DHH implemented it in Rails.
* Models are those classes that "model", ie. represent, the main data to be used in the app. They are objects like User, Team, Company, Car.
* Controllers are classes that control the processing flow of the app. They use the models, combining them with flow logic and input from the user and then redirect processing to views to be rendered or to other parts of the system.
* Views aren't really classes at all. They are the most different. They instruct Rails how to format the output. Can be JSON, XML, HTML mixed with Ruby.

# HTML / CSS
* Before we can get into creating views we have to understand basic HTML and CSS
* What is HTML? Hypertext Markup Language
* Invented in 1989.
* Gone from HTML to HTML 5.
* Used to markup, or describe, the content sent to the browser
* Browsers have their own default stylings for each tag unless you override.
* CSS: Cascading Style Sheets
* Invented in 1994
* Used to style the tags. Keeping styling separate from markup.

## Examples in real world
* Looking at the source in your browser
* Using the inspector

1. http://tampa.craigslist.org/
2. http://drudgereport.com/
3. https://medium.com/@cameronmoll/the-economics-of-a-kickstarter-project-5b374cfeb43c
4. https://signalvnoise.com/

* Tags: html, head, title, body, headers, p, strong
* https://developer.mozilla.org/en-US/docs/Web/HTML/Element
* Hyperlinks (anchor tag `a href`)
* External CSS
* https://developer.mozilla.org/en-US/docs/Web/HTML/Element
* Opening locally
* Inline styles vs external. Prefer external.
* Colors can be done with hex values to get more specific.
* install atom plugin: color-picker
* change the font using a Google font: https://developers.google.com/fonts/docs/getting_started
* can use remote fonts or local ones
* can use free fonts like Google fonts, http://www.fontsquirrel.com/home
* or, pay for fonts like: typekit.com (http://reviews.brianburridge.com/, https://typekit.com/account/kits)

# Codepen
* http://codepen.io/
* like gists but for browser code
* show some samples
* http://codepen.io/ktrammell95/pen/wBeOee
* http://codepen.io/tawnimartin/pen/azwMVr
* http://codepen.io/thebeckyhamm/pen/qEjgjK


# Assignment 27: Codepen
* Sign up for an account (login with GitHub)
* [Here's mine](http://codepen.io/bburridge/)
* Create one codepen with HTML and CSS of anything. Include the link in this issue.

# Assignment 28: Blog
* Read [Separation of Concerns](http://en.wikipedia.org/wiki/Separation_of_concerns)
* Read [MVC](http://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller)
* Refer to [HTML Element Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element)
* Refer to [CSS Reference](https://developer.mozilla.org/en-US/docs/Web/CSS)
* Create a home page with the title of your blog, and your name as the author
* List out at least 3 pretend blog posts with their title, word count and summary. Hyperlinking them to their own HTML Post pages.
* On the individual Post pages, should show a link back to the home page, the blog title, the post title, the body, and the published date.
* You should have four HTML files that all link to each other and one external css.
* Include an image in at least one blog post
* Bonus: Use at least one custom font from Google
* Put these files in an _assignment_28_ folder and check into github

#### _End week 3 / Tuesday_

# rbenv
* What is it? Why use it?
* [Instructions](http://albertogrespan.com/blog/installing-ruby-the-right-way-on-os-x-using-rbenv/)
* [More](http://robots.thoughtbot.com/using-rbenv-to-manage-rubies-and-gems)
* Install with:


    brew install rbenv ruby-build rbenv-default-gems rbenv-gem-rehash rbenv-vars


* Add this this to your _.bashrc_ or _.zshrc_, if it's not there already


    if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


* Install these:


    brew install libyaml readline openssl


* Run this to get the latest ruby versions


    brew update && brew upgrade ruby-build


* Exit out of shell and back in
* Install latest ruby


    rbenv install 2.2.0



* Set the ruby version for you local app or code set


    rbenv local 2.2.0


* Upgrade system gems


    gem update --system

* Note the _.ruby_version_ file
* Show the version toggling (cd'ing back and forth)
* Check the _.ruby_version_ into your repo, so anyone using it uses the same Ruby
* `gem install bundler`
* Now have to type: `bundle exec` before every command
* Show difference between gem list with it and without it, and in other directories


# Installing Rails
* We'll use the latest: 4.2
* Add `gem 'rails'` to your _Gemfile_ and run `bundle install`


    rails new first_app
    cd first_app
    be rails s


* Go to http://localhost:3000 in your browser. It's your first app!
* Look over all folders
* Look at routes
* Go through http://guides.rubyonrails.org/getting_started.html
* Pass a param on the url of name and say that on the page
* Show code being called in the controller method (set an instance variable with the param)
* Show logs and the data that is shown, including the params hash
* Show generating HTML from an ERB
* Set a string of arrays in the controller and iterate over it in the view

# Assignment 29: Movie query app
* Review [Ruby Rails guide](http://guides.rubyonrails.org/getting_started.html) up to section 5.
* Create a new rails app called _movie_query_
* This app and it's folder should be inside your assignments app.
* Generate a 'movies' controller with a 'search' action.
* Paste all your Ruby code from the movie query app into your _search_ action
* Note: you don't need to require active_support any more. Try not requiring libraries until you get an error.
* Put the first movie's synopsis in the results into an instance variable
* In your ERB, _index.html.erb_, use Rails expression display the movie synopsis

#### _End week 3 / Wednesday_

# Talk about how Rails gives us SOC
* moving the getting and putting of data out of the models and the controllers
* diagram with controller in the middle column, input on the right column, output on the left (views), models used across the controller and view columns.

# In the first_app, show iterating over an array of movies
* Use the ul tag

# Showing using the link_to helper instead of an anchor tag
* http://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-link_to

# Using the Rails image_tag
* add to first_app: <%= image_tag "" %>
* show in inspector that it produces the same HTML
* http://api.rubyonrails.org/classes/ActionView/Helpers/AssetTagHelper.html
* just like the stylesheet_link_tag and javascript_include_tag like in the application layout

# Helpers
* Show this code working with Today's date


      def formatted_date(date)
        date.strftime('%b %d, %Y')
      end

      <h2><%= formatted_date(Date.today) %></h2>

# Rails generators
* we used a generator to create the application
* rails generate: see all the available generators

# Show tables
* Build a table populating it via a nested array
* https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table
* Show tables in my monitor app (not the overview)

# Show Bootstrap
* Implement some examples in my first_app
* http://getbootstrap.com/
* http://getbootstrap.com/getting-started/#download

# Weekend Assignment 30: Improve the Movie Query app
* Alter your existing app so you are no longer returning the synopsis in an instance variable, but instead returning the entire first movie result. We will assume for this exercise that the first movie that comes back is the one we want.
* Using all the information returned for the movie, recreate a movie information page like this one on [IMBD]() or this one on [Rotten Tomatoes](http://www.rottentomatoes.com/m/kingsman_the_secret_service/). Note it does not have to have their branding but should nicely layout as much of the movie information as possible. Ex: poster, ratings, synopsis, tomatometer, some cast, running time, etc.
* The goal is to create your own movie information page as though you were creating one for a client's movie app.

# Weekend Assignment 31: Blog Rails App
* Review the [UrlHelper](http://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html)
* Review the [AssetTagHelper](http://api.rubyonrails.org/classes/ActionView/Helpers/AssetTagHelper.html)
* Review the [table](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table) HTML tag
* Create a new Rails app. It should go inside your _assignments_ repository.
* This will be a blog app.
* You'll want a posts controller with an index action and actions for the individual posts.
* The "root" of your blog app should be the posts index page, showing links to the posts.
* Add an about me page with real information about yourself. This should go in a 'welcome' controller. Tip: don't forget to setup your routes.
* Use Twitter Bootstrap to make this look as nice and as real as you can make it. I'm going to pick the best and show it to other instructors at TIY in our weekly meeting. Remember you can install Bootstrap using the simple CDN method.
* Create and use at least one helper method. It could be used to format a date, for example.
* Use the image_tag in at least one place.
