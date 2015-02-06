## Quiz Questions and Answers

### broken_interview.rb
* https://gist.github.com/brianburridge/62356f6c1cbf3e45be61

1. undefined local variable or method `user_input`
2. prompt the user for input using gets and store in user_input variable

### class_errors.rb
* https://gist.github.com/brianburridge/9b2e875d3fadf7dd845a

1. because give_raise is setup as a class method but is called as an instance method
2. remove the `self` from the give_raise method definition

### loop_output.rb
* https://gist.github.com/brianburridge/61f42f744e5d54d88f84

1. nothing because it will never enter the while loop

# Talk about Pigatize
* https://gist.github.com/brianburridge/7e98d358dee03c6b6060
* shouldn't change my class structure. That was there for a reason. Should be able to call:


    PigLatin.starts_with_vowel("a")

and get back a true or false.

# Files
* Illustrate on white board an app getting data from user at the command line, from web browser, from APIs, from databases and from files
* [File documentation](http://www.ruby-doc.org/core-2.1.2/File.html)
* It's parent is IO.
* Let's look at IO.
* No need to require this library. It's part of the core.
* Look at mtime, gets, etc (see Curriculum/code/file_read.rb)

# Assignment 15 - in class
* Copy and then modify assignment 12 to read the questions from a file instead of the hardcoded array
* Load them into an array so the rest of the program can remain the same
* If your assignment 12 is coded correctly, you won't have to change the part that asks questions
* Should be two lines of code

# HTTP Get
* HTTP: Hypertext Transfer Protocol. Foundation of data communication on the web.
* One system (often a browser, but can be any app) makes an HTTP request to a server, which sends back the response over HTTP, along with a response code (200, 404, etc)
* There are many request types or methods: POST, PUT, GET, DELETE, PATCH are the ones Rail 4 supports
* We will look at doing an HTTP Get
* [Net::HTTP Documentation](http://ruby-doc.org/stdlib-2.1.3/libdoc/net/http/rdoc/Net/HTTP.html)
* Must `require 'net/http'`
* [Scifi Scripts site](http://www.scifiscripts.com/)
* URI: uniform resource identifier
* `uri = URI('http://www.scifiscripts.com/scripts/startrek2_wrathofkhan.txt')`
* `response = Net::HTTP.get(uri)`

# Assignment 16 - in class
* Pick a screenplay from this list, http://www.simplyscripts.com/, in text
* Read in the screenplay and write it to a local file

# Communication formats, JSON and parsing
* HTML, CSV (one of the original formats), XML, JSON, YAML
* show CSV
* XML: http://www.w3schools.com/xml/simple.xml
* person CSV:


    Brian, PA, M, brian@theironyard.com


*person JSON:

    {
      "person": {
        "name": "Brian",
        "birth_state": "PA",
        "gender": "M",
        "email": "brian@theironyard.com"
      }
    }

* person XML:


    <person>
    <name>Brian</name>
    <birth_state>PA</birth_state>
    <gender>M</gender>
    <email>brian@theironyard.com</email>
    </person>

* person YAML:


    person:
    name: Brian
    birth_state: PA
    gender: M
    email: brian@theironyard.com

* open the Person JSON and parse in the console


    require 'json'
    person = JSON.parse('{
    "name": "Brian",
    "birth_state": "PA",
    "gender": "M",
    "email": "brian@theironyard.com"
    }')

* not going to parse YAML right now (but be aware of that format)  
* There is also Nokogiri which lets you parse HTML and XML

# Helpful JSON resources
* [Main JSON site](http://json.org/)
* [Online JSON Editor](http://www.jsoneditoronline.org/)
* [JSON validator](http://jsonlint.com/)

# Some JSON APIs examples
* build acronym query script: query and parse JSON (acronym.rb)
* Request params and how they are passed via HTTP (?, multiple separated by ampersand)
- http://www.nactem.ac.uk/software/acromine/rest.html
- http://www.nactem.ac.uk/software/acromine/dictionary.py?sf=NFL

# Assignment 17
* Read about [HTTP](http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol)
* Read review on [using JSON in Ruby](https://hackhands.com/ruby-read-json-file-hash/)
* Look thru some [JSON Examples](http://json.org/example)
* Copy assignment 15 and modify to now read in questions from a JSON file
* This means you need to create a JSON file of you questions
* Read and parse the JSON into an array so the rest of the app remains the same

#### _End week 2 / Monday_

# Quick reminder on using IRB
* It's a place to quickly try out code, but you should be writing your code in Atom and running it in the terminal
* More of an experimentation and testing area

# Show options on comparing lowercase (pigatize example)

    VOWELS = %w(a e i o u)
    word = "Alert"
    VOWELS.include? word[0]
    VOWELS.include? word[0].downcase

# Show simple JSON for questions including just an array for them
* In code directory (show questions.json and simple Ruby solution)

# Rotten Tomato API
* Get everyone signed up with an API key for Rotten Tomatoes and using it in the browser.

# Assignment 18: Movie Querying script
* http://developer.rottentomatoes.com/
* Use Rotten Tomato's movie querying script to create a command line app which prompts the user for a movie title
* Using the entered movie title, search via the API for the movie's synopsis and output to the user
* If more than one movie comes back, show all the movie title matches with their synopsis

# Extending Classes
* in this example will extend a Ruby class. Not something you will do often
* showing it to illustrate, both how the ActiveSupport classes work, and, why using classes to encapsulate functionality is beneficial
* In exercise 14 you had to move the first letter of a string to the end for piglatin

- go over respond_to?
- to check if an Object can respond_to? something
- `"hello".respond_to? "move_first_letter_to_end"`
- load 'move_first_letter_to_end'
- `"hello".move_first_letter_to_end`

# Assignment 19

Extend Ruby's String class to have a "pigatize" method that will turn any string into pig latin.

Should use the same code you wrote before, but now you are extending the String class and putting the functionality in there.


# Using libraries (aka, gems)
* Rails provides some helpful methods, such as (try in a Rails console under monitor assignments):


    Date.tomorrow + 1.week
    "".blank?
    "test".present?
    5551234.to_s(:phone)
    1234567890.50.to_s(:currency)  
    1234567890.to_s(:human)

* but over in irb...(try there...fail)
* It's in the Rails ActiveSupport library: http://api.rubyonrails.org/ (click on ActiveSupport)
* We can import this library with:
    require 'active_support'
    require 'active_support/all'
* But fails because it doesn't come with ruby. We have to install it as a ruby library, or Gem.
* We do that with: gem install activesupport
* Now we can do the require statements and get the library.

# Gemfiles
* We want to be able to keep track of what gems we need for an app and what versions of the gems, so we use a Gemfile
* [Example](https://github.com/brianburridge/brianburridge.com/blob/master/Gemfile)
* [Another Example](https://github.com/brianburridge/monitor_assignments/blob/master/Gemfile)
* [Find gems](https://rubygems.org/)
* Then we can use "Bundler" to install all the gems from our Gemfile. First, we must install the bundle gem.


`gem install bundler`

* Then we can do: `bundle install`
* If you get an error you may need to install the Yosemite developer tools. First run `gcc`. It may prompt to install them. http://railsapps.github.io/xcode-command-line-tools.html
* Discuss groups, pessimistic operator (~>), >=
* http://robots.thoughtbot.com/rubys-pessimistic-operator

# Assignment 20
* Note: Please check in your Gemfile and Gemfile.lock
* write a Ruby script that uses the Rails ActiveSupport gem, installed via a Gemfile and bundler
* the script should do the following when run:

1. Show the date of the beginning of the current week
2. Show what the date will be in 30 days
3. Show what day of the week today's date will fall on next year
4. Show what day of the week the user's birthday will be on this year
5. Using the String class, pluralize a singular word the user enters and show the singular for a plural word the user enters
6. Using the String class, truncate a phrase the user enters to 20 letters
7. Using the Array class, convert an array of three words to a sentence with one command

* You'll need the following Rails extensions that come with ActiveSupport:
- http://api.rubyonrails.org/v4.0.3/classes/Date.html
- http://api.rubyonrails.org/v4.0.3/classes/String.html
- http://api.rubyonrails.org/v4.0.3/classes/Array.html
- http://api.rubyonrails.org/v4.0.3/classes/Numeric.html

#### _End week 2 / Tuesday_

# T. Ferriss on drums
* growth mindset. he says he likes being in that uncomfortable zone
* it's natural to feel overwhelmed when learning anything new
* "play the song not the drums" -> write the assignment, don't think about anything bigger than what's in that one assignment

# Attributes

## Variable Scope
- local, global, instance, class

## Local variables


    10.times do |x|
      puts x
      puts defined? x
    end

    puts defined? x

* local variable so it's only accessible within the block it's created in


## Instance variables
- an @ in front of a variable is an instance variable available throughout the entire object as we used above


    @counter = 100
    10.times do |x|
      puts x
      puts defined? x
      @counter = x
    end
    puts @counter

## Methods for accessing instance variables
* attr_accessor
* attr_accessor creates getters and setters
* attr_reader creates a getter
* attr_writer creates a setter
* see team.rb

## Illustrating how to use the class and the difference between the 3 attr_* methods

    team = Team.new

    team.respond_to? "name="
    team.respond_to? "name"

    team.name = 'Gators'

    team.respond_to? "city"
    team.respond_to? "city="

    team.city = 'Gainesville'
    team.city #fails (can't read the city)

### this sets the city

    team.set_state_by_city

    team.respond_to? "state"
    team.respond_to? "state="

### Has a value

    team.state

### Cheer for team

    team.cheer_for_team

### Show manually creating setter and getter methods to access an instance variable

    def sport=(name)
      @sport = name
    end

    def sport
      return @sport
    end


## Global variable
* Begins with a $
* Available anywhere in the app
* Rarely ever used. Not very "Ruby" or OO
* We won't use them in any assignments
* But if you see them in code samples you'll know what they are

## Class variables and initializers
* two @@ in front of a variable is a class variable. Available across all instances of the class with one value stored in the class.
* the initialize method is always there by default in all classes. Can be overwritten to add your own functionality. Is called when you create an object.
* is actually an instance method. When you create an object, Ruby creates an unitialized object, then calls the initialize method on it to create the object you asked for and with any code that needs to be run at that time.

* Add to the team.rb:


    @@team_count = 0

    def initialize
      @@team_count += 1
    end

    def self.number_of_teams
      @@team_count
    end

* show calling number_of_teams

# Private and public methods

* private methods allow us to restrict a method call from being called outside the class
* move set_state_by_city to be private
* add a manual city= method

# Assignment 21 - in class pairing
* Write a Person class and some code to use it, following the directions below.

## First

* Create a Person class with attributes: first name, last name, and birthdate.
* First name and last name should not be able to be written to, but should be readable.
* Birthdate can be set and read.
* Create a public instance method called `name` that takes the name and sets the first name and last name instance variables. This is so the first name and last name attributes are set by passing in one name.
* Create a public instance method called `age` to calculate and return the user's age.
* Now, outside the Person class, ask the user their information and use it to create the Person object.
* After asking each user their information, output the user's age.

## Next

* Create a class variable that will count the number of people that enter in their information. After you output the person's age, also output the number of person they are so far (using the class variable).
* Loop to allow another user to enter their information. (exit when user enters \q for name). Create a Person object for each user.
* Create a private method called `calculateAge`. This should contain the functionality you previously had in the `age` method. The public `age` method should now call this new private `calculateAge` method.

# What is a PORO?

# Running code in one file that uses classes

# Assignment 22
* Read [How Do Gems Work? ](http://www.justinweiss.com/blog/2014/09/29/how-do-gems-work/?utm_source=rubyweekly&utm_medium=email)
* Read [Understanding Ruby Blocks, Procs and Lambdas](http://www.reactive.io/tips/2008/12/21/understanding-ruby-blocks-procs-and-lambdas/)


#### _End week 2 / Wednesday_

# Lab time and getting help
* I have about 4 meetings a week, that's when you won't be able to find me (quiet place so I can talk on the conference calls)
* I have to write journals and blogs
* I spent many hours going through your homework
* So if you see me "busy", that's why.
* But, unless I'm in a meeting, lab time until 5pm is your time to get with me. You must make use of that time. It's the only reason I'm here. I could do everything else from home. I'm here to help you but you have to let me know when you need help. It is the most important reason for me to do so, so interrupt me.
* Ping me privately in hip chat if you don't want others to know you need help. Some of you do that regularly. You should all feel free to do it.
* My preferred method is for you to post a question in hip chat, giving others a chance to help you. You may get some very quick help like that and it's how you'll have to communicate on the job. Also, other students might provide some help to you using terminology you can connect with because you are all on this together.
* That's one of the reasons we paired up, so you could see how helpful that can be.
* It might sound like I'm sending you to each other so I don't have to get your questions, but that isn't true at all. 1) if you ask another student, and they don't know, and you both ask another student and they don't know, then come to me together, and that will help me to know to do more lecture/practice time on that concept.
* As well, one of the most craved skills by employers are developers who can become seniors and guide other developers. If you are able to help others here, you can build those skills and I can not only recommend you as a developer, but also a mentor. However, if none of you go to others for help, then you don't give anyone in here the opportunity to practice mentorship.
* I know some of you might be shy, but it's really important that you feel free to come to me when you need to talk about something, and that you go to your peers. They are your coworkers.
* If someone in the class or myself doesn't help you in hipchat, come find me.
* But, if you don't ask the question, you aren't going to get help.
* If you feel like you are struggling, but you are turning in all your homework on time, and it's right and it works, I have no way to know you are struggling. From my perspective, you are learning and doing the work and things are looking good. Again, if you want to talk privately, I could not be more willing to do so, but I need you to ping me and let me know. Confession, I'm not good at reading minds.

# Reminder on String interpolation
* Not necessary here: `a = "#{user_answer}"`

# Tips on splitting the name into two variables & Array to multiple variables

* This solution does a split on the String 2x. The first split gave us both.


    def name=(user_name)
      @first_name = user_name.split[0]
      @last_name = user_name.split[1]
    end

* Could also be:


    def name=(user_name)
      names = user_name.split
      @first_name = names[0]
      @last_name = names[1]
    end

* But this is even cleaner


    name = "Brian Burridge"
    first_name, last_name = user_name.split

# Subtracting Dates
* Gives you a rational. If you convert to an integer you have days
* `(Date.today - bd).to_i/365`

# Show URI encoding to fix spaces and other characters not allowed in a URL

    CGI::escape("Long movie")


# Review extending a class
* how we call a method ON an object now, instead of passing one


# Array.collect/map (with/w/o !)
* http://www.ruby-doc.org/core-2.1.3/Array.html#method-i-collect
* show some examples

# Array.delete_if/reject/reject!
* http://www.ruby-doc.org/core-1.9.3/Array.html#method-i-delete_if

# Array.select/select!
* http://www.ruby-doc.org/core-1.9.3/Array.html#method-i-select

# Enumerable.sum
* Enumerable is in ActiveSupport, so must require it.
* http://api.rubyonrails.org/classes/Enumerable.html#method-i-sum
* Add a players to the team.rb: `attr_accessor :players`
* Create some team objects and push onto a teams array
* require active_support
* Sum them up: `teams.sum(&:players)`

# Work through creating clean OO as a class
* https://gist.github.com/brianburridge/3eabb00826af747de2a2

# Assignment 23
* Create an InvoiceItem class and an Invoice class (two classes in two separate files)
* The InvoiceItem class should have the following attributes: product_name, sale_price, quantity, tax percentage
* The invoice class should have a getter and setter for an attribute called: _items_ to hold an array of all the InvoiceItems
* Create an instance method in Invoice that will calculate a total of all it's invoice items
* Use reject or select methods in order to remove any InvoiceItem objects that have a zero quantity
* Ask the user to enter in the attributes for each invoice item, hitting ENTER on product name when done
* With each invoice item entered, create the object and add it to the collection of invoice items within a single Invoice object.
* Then output each line item.
* Show a sub-total without the tax, then a line item for the tax, then the total.
* Bonus: make the invoice look like a real world invoice in the terminal

# Assignment 24
* Take the Employee and Company classes, and create functionality to allow the company to hire and fire an employee.
* Create a Ruby app that will use those classes to do the following:

- prompt the user to enter information for the company.
- prompt the user to enter each employee. It will then "hire" each of them.
- show a list of employees, with ids, then ask the user if they would like to fire an employee by entering that id.
- fire the employee by id and show an updated list with that employee no longer in it.
