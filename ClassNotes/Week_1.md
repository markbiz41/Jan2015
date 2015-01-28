# Overview

## Welcome and some ground rules
* Everyone introduce themselves (again): name, what you were doing before coming here, where you live
* [Review 'Expectations'](https://github.com/theironyard-tampabay/Jan2015/blob/master/Expectations.md)

# Class motto
* perseverance, patience, politeness, professionalism

## You will learn:
* How to collaborate
* How to break down problems into smaller pieces
* How to learn
* How to think like a problem solver
* How to develop theories, try them, get feedback, and refine them or discard them, and start over
* How to teach what you know (each student will present a lesson to the class at least once)
* Also: Ruby, Rails, Git, Github, terminal, SQL, HTML, CSS, JavaScript, deploying and hosting, testing and more

## My Goal
* To teach you as much about becoming an employable web software developer. This includes a lot more than just getting assignments done. You might get frustrated with me and the answers I give, but I promise you its not in your best interest for me to give you the answers. I want you to find the solutions yourself. I'm here to lead you to finding them.
* There is a lot more that goes into being a successful developer than writing good code.
- You have to learn how to analyze problems and requirements
- How to communicate
- Development processes (inc. source control)
- How to meet deadlines
- How to solve new problems on your own

## Six things needed for development success
1. an environment to develop in
2. a process to develop under
3. an established means to communicate with other members on the team
4. patience with ourselves and others
5. acceptance that not everyone has the same skills, the same methods of solving problems, the same methods of communicating
6. leadership promoting the importance of items 1 - 5

## Look at some apps that are Rails:
* [Basecamp](http://basecamp.com)
* [Shopify](http://www.shopify.com)
* [GroupOn](http://groupon.com)
* [AirBnb](http://airbnb.com)
* [SoundCloud](http://soundcloud.com)
* [BleacherReport](http://bleacherreport.com)
* [ZenDesk](http://zendesk.com)
* [Hulu](http://hulu.com)
* [GitHub](http://github.com)

## Apps I have worked on over the last few years
* [Peepnote](Peepnote.com)
* [Commendable Kids](CommendableKids.com)
* [MileyCyrus apps]
* [GitHub Training](https://training.github.com/)
* [Discount Park and Ride](DiscountParkAndRide.com)
* [Asics](https://www.youtube.com/watch?v=SnrzClsOlyU)
* [TourWrist](http://www.tourwrist.com/)

## What is Rails? Why do we use it? What is a "full stack"?
* The front end, what you see and runs in the browser: HTML/CSS/jQuery/Javascript (created by views in Rails)
* The back-end is the part of the app that stores and manipulates the data: classes, models, controllers
* Diagram showing: user, browser, app on a server, with APIs, DBs, etc
* Take photo of board and check in to notes

## Discuss the stack of:
* HTML/CSS/Javascript
* Ruby
* Rails (on Ruby)
* a server and configuration for the server and app
* source control (Git/GitHub)
* Database (or other data storage)
* Tools to write code (Atom for now in this class, will introduce others as we go)
* APIs (more data sources but not pulled directly via database helpers)

### Draw the stack and dev process on the board
* from local dev computer to git server to hosting server
* showing multiple repos, multiple dbs, multiple code base
* take photo and check into repo

## Open a working Rails app (brianburridge.com) and show all these elements in practice.
1. Show the directory structure
2. Go through all the pieces showing an overview

## Talk about necessary tools
* HipChat
* Atom
* Ruby compiler
* Git
* GitHub

## Check that everyone's environment has:
1. Git
2. Ruby
3. Atom

# Lesson 1 - Source Control, Team Work, Atom
1. Talk about: source control, git, github and issue
2. Diagram repositories locally, on a server (GitHub) and on other developers computers
3. How and why we use SSH to connect with GitHub. Walk through these instructions:
- first need to create a `.ssh` directory in their user directory
- https://help.github.com/articles/generating-ssh-keys
4. Demonstrate creating a repo and add one text file
5. Teach cloning and have everyone clone it down.
6. Demonstrate: `git remote -v`. There is a label and URL.
7. Demonstrate: `git status`
8. Use Atom to edit the README.md and add my name to the file
9. Do `git status` again
10. Notice the output and what it tells us about files being staged.
11. Demonstrate: `git add README.md`
12. Do `git status` again. See list of files now staged to be committed
13. Demonstrate: `git commit -m "Added my name" README.md`
14. Do `git status` again. Now shows README.md has been committed and that my local branch is ahead of the origin/master by 1.
16. Edit the file on github.com
17. Demonstrate: `git push`
18. Explain the merge conflict and how to resolve it. Must do `git commit -am "some message"`
19. Now can push again
20. Have every student add their name

## Assignment 1 - in class
* Show how my assignment tool works
* Create the first assignment with the content below.
* Show pushing the assignment to them all.
* Have them all add callback hook information and explain how that works. (Pull up mine from here: https://github.com/brianburridge/Assignments/settings/hooks/3363850)
* Have them all mark the issue with the 'completed' tag.
* Check that all are marked with me ready to review it.
* Show them me closing it off and how that updates on my app too.
* Show the commit log and how to get the URL of their commit to share with me.

## Content for Assignment 1
* Clone down the repo we created in class.
* Add your name to the students.txt file.
* Add, commit, and push the file to the repo.
* Mark the issue _completed_ and paste a URL to the commit in the comment of the issue.

## Git(Hub) Cheatsheet
* [Git and GitHub cheatsheet](https://training.github.com/kit/downloads/github-git-cheat-sheet.pdf)

## Some advice
* Don't use spaces in filenames
* Be careful to be sure you know what directory you are in at all times and not to have two of the same directory. (pwd)

## Assignment 2
* Create a folder in this repo using your first name.
* Add two new files inside the folder. One should be a text file named _aboutme.txt_ telling me five things about yourself. The other can contain anything.
* Push these to the repo.
* Use `git rm filename` to remove the second file. Then commit that delation and push to the repo.
* Remember to mark it completed when you are ready to turn this in.
* [Read Chapter 1 of the Git book. Sections 1.1 through 1.4 ](http://git-scm.com/book/en/v2/Getting-Started-About-Version-Control)
* Finish [try.github.io](https://try.github.io/) if you didn't finish it for the prework.

** END Monday / Week 1 **

# Show marking an issue 'completed'
* Ensure everyone's repos are doing the callback

# Review git and github
* Any questions?

# Ruby, HelloWorld, String
* What is Ruby?
* High-level, interpreted (no compiler needed), object-oriented (like Java) - everything in Ruby is an object
* Created by Yukihiro Matsumoto (often just called "Matz") in 1995
* Show the irb and why we use it.
* Go over potential confusion of being in irb vs the terminal. Talk about command line apps (vim, git, irb) vs GUI apps (Atom, Chrome, Safari)
* For all applications, we need to get data into the app, and then return data. There are many ways to do this. With command line Ruby we use `puts` (put string) or `print` and `gets` (get string).
* Demonstrate the difference between `puts` and `print`

3.times { print "Hello!" }

3.times { puts "Hello!" }

* Create a Hello World ruby file
* Show the puts and print statement with Hello World
* Run it at the command line with `ruby hello_world.rb`
* Flip the executable bit and run again without the `ruby` - throws error, why?
* Add the shebang line to identify the script, using the path to your Ruby (found by running `which ruby`)
* Run it

# Math
* + - * / ** (Exponentiation) % (modulo)

# Comparisons
* return Booleans (our first data type)
* ==
* !=
* > >=
* < <=

# Operators
* && ||
* & |
* (differences between the two)
a = 1
(1 != 1) && (a=2)
(1 != 1) & (a=2)

# Evaluating using parenthesis
* things inside are evaluated first
* `puts (4 * 2) + (6/3)`

# Everything in Ruby is an Object
* `"Hello World".class` is a Ruby object of class type String
* String.new("Hello World") - creates an object
* We can call methods on objects, like .length on a String object
* Go to [API](http://ruby-doc.org/) and discuss looking up information
* Look up by object to see what you can call on it

# What is an Object? What is a class?
* Human class, versus instances of Humans: George, Maria

# Variables: booleans
* already saw this because of our math work
* true/false
* how to use the !

# Variables and Literals
1. Teach variables (objects): String, Date, Fixnum (integers), Float, Array (%w), Hash
2. Two ways to write Hashes, :old => true, new: true
3. Note Date is not a core data type. It's a class created to provide Date variables. It must be required to use them. require 'date'
4. naming conventions:
- all lowercase
- words separated by underscores
5. Literals are used to create objects of specific type. `23 is a literal used to create a Fixnum object`

# Purpose of a variable
- point to a value
- diff between assigning it to a var and not

# Constants and symbols
NAME = "Brian"
puts :myvalue.object_id
puts :myvalue.object_id
puts "myvalue".object_id
puts "myvalue".object_id

## A symbol is a way to pass string information, always assuming that:

* The string needn't be changed at runtime.
* The string doesn't need methods of class String.

## Introduce gists
* https://gist.github.com/brianburridge/79de494772daf7976ea9

# Assignment 4
Use the following code to create a Ruby file and run it. The file can be run either by `ruby filename` or, if you choose, you can set the executable bit (`chmod +x filename`) and add a shebang.

puts 3 > 4
puts (3 * 2) > 10
puts 2 == 3
puts (1 > 0) && (2 <= 1)
puts 2 != 2
puts (14 <= 10) || (2 >= 3)
puts 10 % 2 == 1
puts (10 ** 2) == 1000
puts 1000 / 300 > 4

Now change the code above so that when you run it, all the equations are true.

Please create a gist of the final code and paste the url of the gist in an issue comment.

## Assignment 5
* [Read about symbols](http://www.troubleshooters.com/codecorn/ruby/symbols.htm)
* Read [Rubyists: Just use double-quoted strings.](http://viget.com/extend/just-use-double-quoted-ruby-strings), but also read the comments. They are the reason I'm having you read this article.

## Assignment 6
* Create code for each comment in [this gist](https://gist.github.com/brianburridge/79de494772daf7976ea9)
* Run the code and paste the output into your issue as a comment for this assignment
* It should list all the proper class names and all class tests should result in 'true'
* Before you run it, can you guess what will happen with the constant code you've created?

# String interpolation, Quotes
* done within double quotes not single quotes
* single are not evaluated (show) - have them try
* can also add strings together

# Taking input
* Show `get`, `chomp`
* color = gets
* show chomp

# Conditionals
* Teach the if, unless and else statements and the Array size method.
* check size of array and decide if name should be asked for

# Comments
* Add some comments, single line and multiline:
=begin
=end

# String methods
* Look up String class
* Show them upcase and ask them to add a line for downcase, capitalize, swapcase
* Show converting dates to strings
* Show them how to convert the passed in String Date to a Date class.
* Use the strftime method of date to format it

# Assignment 7
* Create a Ruby script to ask the user for their name and then wish them a Happy Birthday by name
* Add some comments to your code
* Put this code in a gist and paste the link from the gist in a comment of this issue

## Bonus
* Add another prompt for birthdate
* Show the birth date in parenthesis after the greeting
* Note: user must enter date in like: 2014/09/22 or 2014-09-22
* Change the output formatting to: Friday, April 1, 1974
* Capitalize the user's name

*** END WEEK 1, Tuesday ***

# Difference between group work and single work
* Will give both, but when its not a group project, everyone should work on their own and not collaborate.
* It's all about the process
* You can ask someone a question, which again, should never be a answer with code
* Some of you that worked together yesterday and collaborated and what should have been a solo project, turned in homework with the exact same wrong answers.

# Convert objects to other objects
* `"30" + 5` and show variations of converting both sides
* `Date.parse("2001-09-01")`
* String to Fixnum (integer): `"123".to_i`
* Fixnum to String: `1.to_s`
* Hash to Array: `{channel: 45, network: 'Brighthouse'}.to_a`

# Note: can go from array to vars

a, b, c = [1, 2, 3, 4]
first, last = ["Brian", "Burridge", "everything else"]

# nil
* means no object
* so you know it is not blank, it has no value at all
* String.new is not nil
* `"".class` vs `nil.class`
* important difference


# Methods also can be chained

name = "Brian".downcase.reverse.upcase

# Shorthand for incrementing and other math

a += 1
a -= 1
a *= 2
a /= 2

# Gsub

if name.include? "B"
name.gsub!(/B/, "z")
else
puts "Nothing to do here!"
end

# Split
* Show splitting: http://www.ruby-doc.org/core-2.1.4/String.html#method-i-split

# Regular Expressions
* http://lzone.de/Ruby-Regex-Examples

# Using match and captures
* http://ruby-doc.org/core-2.1.4/MatchData.html

# Extract full name, and both parts... string "name is Doe, John"
line = "name is Doe, John"
if result = line.match(/name is ((\w+), (\w+))/)
fullname, firstname, lastname = result.captures
end

# Loops, iterators, blocks
* See my sample code from class

# Assignment 8
* [Read](https://www.bluebox.net/insight/blog-article/using-regular-expressions-in-ruby-part-1-of-3)
* [Review](http://lzone.de/Ruby-Regex-Examples)
* [Play](http://rubular.com/)
* Write a Ruby script to do the following:

* Take the string "Hello World" and split it on whitespace. Show two ways to do this.
* Use the Peter Piper tongue twister and split it on 'pick'
* Use gsub only to change the first passage to the second in the fewest amount of commands:

Original: "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. You're on your own. And you know what you know. And YOU are the one who'll decide where to go..."

Result: "I have brains in my head. I have feet in my shoes. I can steer myself any direction I choose. I'm on my own. And I know what I know. And I'M the one who'll decide where to go..."

* Write code to determine how many times 'sh' occurs in the following phrase:

There once was a man who had a sister, his name was Mr. Fister. Mr. Fister's sister sold sea shells by the sea shore. Mr. Fister didn't sell sea shells, he sold silk sheets. Mr. Fister told his sister that he sold six silk sheets to six shieks. The sister of Mr. Fister said I sold six shells to six shieks too!

* In the same phrase above, how many times does 'sh' occur when followed by an 'o'? Show the code.
* Match the word `foot` but not `football` in this phrase: "He played football despite having an artificial foot.""
* Match the last `sits` in a phrase using this phrase: "I saw Susie sitting in a shoe shine shop. Where she sits she shines, and where she shines she sits."

# Assignment 9
* Take a string from the user, reverse it, remove the last character and reverse it again (no shortcuts)
* Be sure if the user enters whitespace on either side of the input, that you remove it first
* For the original text input by the user, count how many words (as separated by spaces) and print this count.

# Assignment 10
* Request input of a number from the user.
* Iterate the number of times indicated by the input number
* Within the loop, print the number of the iteration
* Do this for each of these methods of looping: while, for i in range, loop, until, .times with counter, range with each
* All should print from 1 to the number input by the user


*** END WEEK 1, Wednesday ***
