# Monday

## Memoization
* [Memoization railscast](http://railscasts.com/episodes/137-memoization-revised)
* Adjust the `current_user` method to use memoization and discuss

## Scoping records to User so site can't be hacked
* Show having movie ratings in my app from multiple users and that I can modify them manually by hacking the URL
* Add condition to only look at user owned records
* Convert to a `by_user` scope

    def set_movie_rating
      @movie_rating = MovieRating.where(user: current_user).find_by(id: params[:id])
      redirect_to movie_ratings_path, notice: "No such movie rating"
    end

## Using the "flash"
* add flash display to layout and controllers to display flash from set_movie_rating

  <% if flash[:notice] %>
    <div class="alert alert-success"><%= flash[:notice] %></div>
  <% end %>
  <% if flash[:error] %>
    <div class="alert alert-danger"><%= flash[:error] %></div>
  <% end %>
  <% if flash[:warning] %>
    <div class="alert alert-warning"><%= flash[:warning] %></div>
  <% end %>

## Scopes
* Go through guide and implement in first_app
* http://guides.rubyonrails.org/active_record_querying.html#scopes
* Show [Scopes in ActiveAdmin](https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md) and implement in first_app

## Common Problems guide
  * Share [troubleshooting guide](https://github.com/TIY-TSP-Rails-Fall2014/Assignments/blob/master/TroubleshootingGuide.md)

## User roles
* Only users with 'admin' role should be able to edit/destroy a movie
* Mention there are many gems to do more complicated roles than using a string
* ActiveAdmin an be adjusted to use this as well. Try in class.

## Assignment 43
* [Read about memoization](http://www.justinweiss.com/blog/2014/07/28/4-simple-memoization-patterns-in-ruby-and-one-gem/)
* Review the [ActiveRecord Scopes](http://guides.rubyonrails.org/active_record_querying.html#scopes) guide
* Review using model scopes in [ActiveAdmin](http://activeadmin.info/docs/3-index-pages.html). Scroll down to the _Index Scopes_ section
* Review my [troubleshooting guide](https://github.com/TIY-TSP-Rails-Fall2014/Assignments/blob/master/TroubleshootingGuide.md)
* Read about the [Flash](http://guides.rubyonrails.org/action_controller_overview.html#the-flash)
* Add three scopes to any model and implement in ActiveAdmin too
* Scope all your user owned models (ex. pin and board), and use within your controller so your site cannot be hacked (denying other's from accessing records they don't own).
* Add flash display on site (within layout). Use a flash notice when denying access to a record the user doesn't own. Note: once in the site wide layout, you'll want to remove the notice displays your scaffolding put in place, or you'll have them repeating on those pages.
* Add an `admin` attribute to your user model. Restrict any admin only actions from your views.

# Tuesday

## Build Instagram
* How much can we build, using what we know?
* Get it working first, make it look good later
* No new homework. Use tonight to catch up. For those caught up, go back and improve your pinterest app, or, clone my instagram app and improve, continue it.

# Wednesday

## Further working on building Instagram

### Add model validations
### Logged in as a specific user

### Editing user profile
* little different than we've done before because it's not a RESTful pattern
* no viewing index of users, creating or destroying
* see my first_app example
* add site wide notifications using flash

### Uploading a post
* allow user to create a post and upload a photo

### What does this app cover?
* at this point we've covered 33 through 43 with the exception of belongs_to select boxes and has_many checkboxes

## Show restricting activeadmin to admin only users
* Use Instagram app for this
* In the initializer set the admin user `authentication_method`, the `current_user_method`, and a temporary `logout_link_path` (root_path), since we haven't done signing in or out yet.


    def authenticate_admin_user!
      redirect_to root_path if !signed_in? || !current_user.admin?
    end


## Assignment 44
* Adjust your Pinterest app to only allow "admin" users to access the /admin section

## Custom rake tasks
* Show rake task listed in `rake -T`
* Show my export_to_json.rake in monitor_assignments (2 tasks)
* Write a custom task to say hello world


    namespace :hello do
      desc "Say Hello"
      task :world => :environment do
        puts "Hello World"
      end
    end


## Assignment 45
* Read about [Rake tasks in Rails](http://guides.rubyonrails.org/command_line.html#rake)
* Create a custom rake task for your Pinterest app that will output the current count of all your models. Example:

  Teams: 4
  Users: 10
  Books: 15
  Authors: 2
  Movies: 1


# Thursday

### Continue with Instagram app
* Add liking a post
* Add commenting on a post

We are half way through as of tomorrow. This is why I wanted to review all we've been doing. Additionally, I want to give you opportunity this weekend to get caught up before we begin the 2nd half.

Therefore this weekend's homework will not be any coding. Instead I want you to answer some questions in written format, to help get things clearer in your head. Beyond that, please use the time wisely. You do not want to remain behind on homework any longer. It will be too difficult for you to catch up and then focus on your demos, which are critical in summarizing all you've learned and launching yourself into your new career.

### Assignment 46: The Half Way Challenge
* Please do this assignment first, before all others, even if you are behind.
* Answer these [questions]() using your own words. This is not an assignment you may collaborate on, nor copy and paste from any other sources.
* The goal of this assignment is to give you an opportunity to get these very important concepts straight. If you aren't sure, do research online until you are. Answer them as thoroughly as you can.
* [Fork this repository](https://help.github.com/articles/fork-a-repo/): https://github.com/theironyard-tampabay/Jan2015, clone it down to your laptop, and add your answers. Then [create a pull request](https://help.github.com/articles/creating-a-pull-request/) back to this original repository in order to turn in the assignment.
