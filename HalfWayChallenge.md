# Half Way Challenge

1. What is a class? A class is a recipe or model of an object that starts with a capital letter.

2. What is an attribute? An attribute holds data and is part of a class.

3. What is an object? An object is a instance of a class.

4. What type of object is a PORO? Plain old Ruby object.

5. What is a Rails model? A Rails model shows the relationship between different classes and functionality.
Model the data our applications is going to use.

6. What is your absolute favorite meal? Chicken Parmesan with spaghetti.

7. What is the difference between a locally scoped variable and an instance variable?
All variables have scope (4 variables) within the class itself.  Local variables are only used in the block of code or method.

8. Why do we use version control like git? Version Control allows developers to see past code they have submitted as well as present code incase variations have to be made.

9. What is the difference between git and GitHub? Git is software where you can create a new coding project and show a history of changes you made to the code.  Github allows you to share your project with other collaborators.  You can pull in requests from other software developers if you like their code.  Also, you can push your code to Github, where you and other software developers can see your code.

10. What is your ideal vacation? My ideal vacation would be on a Caribbean Island and swimming in clear blue waters.

11. What does the pattern of Separation of Concerns mean and why do we use it?
Seperation of Concerns is simplifying the development process of software.  By breaking up a software project into various parts makes it easy to program.

12. What does the pattern MVC mean? Model, View, Controller.

13. What is the difference between a Rails model and a database table? A Database Table organizes your data by common characteristics.  A Rails Model can add data, find data, update data and remove data.

14. How do we modify the database for our Rails app? Use database.yml

15.What do you do to relax?  I like to go to the gym and run on the threadmill.

16. What is a gem and how do we use them in our Rails apps? A Gem provides software procedures in which we don't have to write additional code to our Rails apps.

17. In what part of a Rails application do we tell it how to handle an HTTP request to a specific path, like: http://localhost:3000/movies? Routes.

18. In what part of a Rails application do we hold data provided by the user, in order to use it, save it to the database, or retrieve it from the database? The Model

19. In what part of a Rails application do we render data, in HTML, to present to the user? The View part of Rails.

20. What TV show do you never want to miss?  Breaking Bad.

21. What part of a Rails application processes actions, uses models, and directs flow to the proper view? Controller

22. If your app gave you the following error message, on this line of code, what would it indicate? The error message would indicate their is no 'name' class to downcase to.

undefined method `downcase' for nil:NilClass


<%= user.name.downcase %>

23. What gem did we use to paginate our Collections? Kaminari

24. What gem did we use to provide upload functionality? The gem we used is called Carrierwave

25. What is your favorite musical artist or group? Aerosmith.

26. What technology do we use to style HTML in the browser? CSS.

27. What type of view templates have we been using in our class to create dynamic HTML? .erb or HAML

28. What type of helpers do we use to check data against certain rules and requirements before it is saved to our database? Validation Helpers

29. What are model associations? Model Associations is when a model can belong to another model.
They show how model relates to each other.

30. Based on the name, if The Iron Yard wasn't a code school, what else might it be? A junk yard.

31. What code would you use to find the a User record in the database with an id of 17?

User.find(1)

32. If you want to use an image inside your app, in what directory do you put it? app, assets, images.

33. What helper do you use to create a form to edit or create a specific resource? A Form Helper.

34. What does this mean? ||= means memoization which remembers the results of some specific inputs of data.

35. What is your nickname? If you don't have one, what do you wish it was?  My nickname would be 'berg'.

36. What is a scope? Please provide one example.  Scope allows us retrieval of a specific class.  An example would be:

class Article
  scope :published


37. What is rake? Give some examples of how and when we use it? Rake allows you to use Ruby code in the command line.  An example would be:
rake db: migrate

38. How do you deploy your app to Heroku?
git push heroku master
heroku open
heroku rake db:migrate
heroku restatrt

39. What gem can we use to provide a fast, yet custom and robust, administrative section for our apps? gem 'activeadmin'

40. What is does anopisthographic mean? The practice of writing on one side only.

41. If a User has many ParkingTickets, and the user variable points to a User object, what code would you use to get all the ParkingTickets?

user.parking_tickets

42. If an Address model has a postal code attribute, what code would you use to get all Addresses from the database with a postal code of 33771?

Address.where(postal_code: 33771)

43. How do you create a new Book object in the database, if a Book class has the following required attributes: title, author, publish_year, pages?

Book.create(title:string author:string published_year:date pages:integer)

44. If we get this message in our log after attempting to save an object, what does it mean?

Unpermitted parameters: first_name

The error message means first_name that cannot be saved to a form.

45. What one question do you wish I would have asked? No more. This is enough already.

