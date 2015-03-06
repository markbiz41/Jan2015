=begin
Half Way Challenge
1. What is a class? A class is a recipe or model of an object that starts with a capital letter.

2. What is an attribute? An attribute holds data.

3. What is an object? An object is a instance of a class.

4. What type of object is a PORO? Plain old Ruby object.

5. What is a Rails model? A Rails model shows the relationship between different classes and functionality.

6. What is your absolute favorite meal? Chicken Parmesan with spaghetti.

7. What is the difference between a locally scoped variable and an instance variable?

8. Why do we use version control like git? Version Control allows developers to see past code they have submitted as well as present code incase variations have to be made.

9. What is the difference between git and GitHub? Git allows developers to see if their code works and Github is where more than one developer can work on coding projects together.

10. What is your ideal vacation? My ideal vacation would be on a Caribbean Island and swimming in clear blue waters.

11. What does the pattern of Separation of Concerns mean and why do we use it? Seperation of Concerns is a way of seperating a computer program into different sections so the program can run better.

12. What does the pattern MVC mean? Model, View, Controller.

13. What is the difference between a Rails model and a database table? What is their relationship? A Database Table takes in data in columns and rows, like a spreadsheet. A Rails Model helps organize data inside a Database Table.

14. How do we modify the database for our Rails app? Use database.yml

15.What do you do to relax?  I like to go to the gym and run on the threadmill.

16. What is a gem and how do we use them in our Rails apps? A Gem provides software procedures in which we don't have to write additional code to our Rails apps.

17. In what part of a Rails application do we tell it how to handle an HTTP request to a specific path, like: http://localhost:3000/movies? Every time we want to see what the web page is going to look like.

18. In what part of a Rails application do we hold data provided by the user, in order to use it, save it to the database, or retrieve it from the database? The Controller part of Rails.

19. In what part of a Rails application do we render data, in HTML, to present to the user? The View part of Rails.

20. What TV show do you never want to miss?  Breaking Bad.

21. What part of a Rails application processes actions, uses models, and directs flow to the proper view? Routes

22. If your app gave you the following error message, on this line of code, what would it indicate? The error message would indicate that there is nothing of value to downcase to.

undefined method `downcase' for nil:NilClass


<%= user.name.downcase %>

23. What gem did we use to paginate our Collections? The gem we used is called 'pg'.

24. What gem did we use to provide upload functionality? The gem we used is called Carrierwave

25. What is your favorite musical artist or group? Aerosmith.

26. What technology do we use to style HTML in the browser? CSS.

27. What type of view templates have we been using in our class to create dynamic HTML? GetBootstrap.com, WrapBootstrap.com or Bootswatch.com

28. What type of helpers do we use to check data against certain rules and requirements before it is saved to our database? Validation Helpers

29. What are model associations? Model Associations is when a model can belong to another model.

30. Based on the name, if The Iron Yard wasn't a code school, what else might it be? A junk yard.

31. What code would you use to find the a User record in the database with an id of 17?
user = User.find(17)

32. If you want to use an image inside your app, in what directory do you put it? app, assets, images.

33. What helper do you use to create a form to edit or create a specific resource? A Form Helper.

34. What does this mean? ||= means memoization which remembers the results of some specific inputs of data.

35. What is your nickname? If you don't have one, what do you wish it was?  My nickname would be 'berg'.

36. What is a scope? Please provide one example.  A Scope adds a class method for retrieving objects and represents a narrowing of a database search. An example is:
class Shirt < ActiveRecord::Base
  scope :red
  scope :dry_clean_only
end

37. What is rake? Give some examples of how and when we use it? Rake replaces the Unix utility 'make' and uses a 'Rakefile' to build up a list of tasks.  An example of Rake would be rake db:create which would create a database file and rake db:migrate which just runs the change or up method for all the migrations that have not been run.

38. How do you deploy your app to Heroku?
git push heroku master
heroku open
heroku rake db:migrate
heroku restatrt

39. What gem can we use to provide a fast, yet custom and robust, administrative section for our apps? gem 'thin'

40. What is does anopisthographic mean? The practice of writing on one side only.

41. If a User has many ParkingTickets, and the user variable points to a User object, what code would you use to get all the ParkingTickets?
class ParkingTickets < ActiveRecord::Base

  def tickets
    @tickets ||= Tickets.from_user(user)
  end
end

42. If an Address model has a postal code attribute, what code would you use to get all Addresses from the database with a postal code of 33771?
class PostalCode < ActiveRecord::Base

  def zipcode
    @zipcode = Zipcode(33771)
  end
end

43. How do you create a new Book object in the database, if a Book class has the following required attributes: title, author, publish_year, pages?
be rails generate Book title:string author:string published_year:date pages:integer

44. If we get this message in our log after attempting to save an object, what does it mean?

Unpermitted parameters: first_name

The error message means that first_name does not have any value associated with it.

45. What one question do you wish I would have asked? No more. This is enough already.
=end
