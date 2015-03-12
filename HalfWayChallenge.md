# Half Way Challenge

1. What is a class?

A class is a template which describes some singular concept of data and it's characteristics, and provides functionality via methods, that can be performed on that data.

2. What is an attribute?

Loved Diana's answer: "Attributes are the characteristics of members of a class." Maybe slightly improved, "Attributes are the characteristics of instances of a class."

3. What is an object?

Simply put, it's an instance of a class, with a combination of variables, functions, and data structures.

4. What type of object is a PORO?

Plain Old Ruby Object (this is as opposed to a Rails model).


5. What is a Rails model?

A Rails model, is a regular class extended by ActiveRecord, that is specifically used to model the data portion of our application. Versus other classes that are used for all types of functionality and data structures (controllers, migrations, initializers, etc) , models "model" the data we will be manipulating and persisting in our application.

6. What is your absolute favorite meal?

Pancakes/waffles, bacon and eggs

7. What is the difference between a locally scoped variable and an instance variable?

All variables have scope. They can be global, local, class, or instance. Difference is accessibility. Local can only be used with the block they are created in. Global are used throughout the entire app. Class are used within the class itself, and instance within a specific object.

8. Why do we use version control like git?

To track the various versions of our code, providing a change log both for historical purposes and to retrieve past versions when necessary.


9. What is the difference between git and GitHub?

GitHub is a remote git server. A remote git server allows us to push our code to a central location, so other developers can share it.

10. What is your ideal vacation?

Staying by the water (ocean, lake, stream), reading, writing, and thinking.

11. What does the pattern of Separation of Concerns mean and why do we use it?

Separating roles in an application so distinct parts have their own responsibilities.

12. What does the pattern MVC mean?

Model - View - Controller. It is one solution to SoC.

13. What is the difference between a Rails model and a database table? What is their relationship?

A Rails model is the class used to create object which store the data. Those objects can be saved, or persisted, to a database table that backs the model.

A model doesn't represent a table. More the table provides a storage mechanism for the model. Is generally backed by a table, but, could be backed by an API or other storage as well.


14. How do we modify the database for our Rails app?

Migrations


15. What do you do to relax?

Watch a movie or TV, read a book, take a walk, or workout at the gym.

16. What is a gem and how do we use them in our Rails apps?

Gem's are libraries of functionality we can use to extend our Rails apps without writing custom code ourselves.

17. In what part of a Rails application do we tell it how to handle an HTTP request to a specific path, like: `http://localhost:3000/movies`?

routes

18. In what part of a Rails application do we hold data provided by the user, in order to use it, save it to the database, or retrieve it from the database?

model

19. In what part of a Rails application do we render data, in HTML, to present to the user?

view

20. What TV show do you never want to miss?

Walking Dead.

21. What part of a Rails application processes actions, uses models, and directs flow to the proper view?

controller

22. If your app gave you the following error message, on this line of code, what would it indicate?


        undefined method `downcase' for nil:NilClass


        <%= user.name.downcase %>

the name METHOD is nil

(any questions as to why name is a method?)

23. What gem did we use to paginate our Collections?

kaminari

24. What gem did we use to provide upload functionality?

Carrierwave

25. What is your favorite musical artist or group?

Skillet

26. What technology do we use to style HTML in the browser?

CSS

27. What type of view templates have we been using in our class to create dynamic HTML?

This one confused everyone. I was looking for an answer of _erb_.

28. What type of helpers do we use to check data against certain rules and requirements before it is saved to our database?

validations

29. What are model associations?

they show how models relate to each other: belongs to, has many, has one, etc

30. Based on the name, if The Iron Yard wasn't a code school, what else might it be?

gym

31. What code would you use to find the a User record in the database with an id of 17?


User.find(17)
User.find_by(id: 17)

32. If you want to use an image inside your app, in what directory do you put it?

app/assets/images

33. What helper do you use to create a form to edit or create a specific resource?

form_for

34. What does this mean? `||=`

memoization

35. What is your nickname? If you don't have one, what do you wish it was?

Brian Norbage (but not since I was little, and I accidentally gave it to myself)

36. What is a scope? Please provide one example.

scope allows us to filter, or narrow down, our retrieval of a collection of objects for a specific class

scope :active, -> {where(active: true)}

37. What is _rake_? Give some examples of how and when we use it?

Rake is a tool, written in Ruby, which we can use to perform operations on our Rails app and it's environment.

38. How do you deploy your app to Heroku?

`git push heroku master`

All the other parts of your answers were how to set an app up to enable deployment, but this command is all that's needed to do the deploy.

39. What gem can we use to provide a fast, yet custom and robust, administrative section for our apps?

ActiveAdmin

40. What is does _anopisthographic_ mean?

a page with writing on one side

41. If a User has many ParkingTickets, and the `user` variable points to a User object, what code would you use to get all the ParkingTickets?


For some reason almost everyone put `user.parkingtickets.all`

I'm sure I've never put `.all` after an association before. Where did everyone see this?

Also, since ParkingTicket is two words it would be `user.parking_tickets`

42. If an Address model has a postal code attribute, what code would you use to get all Addresses from the database with a postal code of _33771_?

`Address.where(postal_code: 33771)`

If I did this instead, what would be different about the data loaded?

`Address.find_by(postal_code: 33771)`


43. How do you create a new Book object in the database, if a Book class has the following required attributes: title, author, publish_year, pages?

Book.create(title: "Casino Royale", author: "Ian Fleming", publish_year: 1953, pages: 250)

44. If we get this message in our log after attempting to save an object, what does it mean?


        Unpermitted parameters: first_name

We forgot to white list the attribute `first_name`.


45. What one question do you wish I would have asked?
