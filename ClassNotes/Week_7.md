# Monday

## New Getting Help Policy
* As we move into the second half it's important to start working the way you will need to at a company. I will still be just as available, but the process will change. Please post in Slack before coming to me. If you aren't able to articulate the problem, at least mention the assignment and the task you are stuck on.
* Other's may then agree they are also stuck there, or offer help. If multiple students are having the same issue, I'll get together with everyone at once.
* Once you've posted, as soon as I'm free, I'll come find you, or ask you to come find me.
* Before asking for help, be sure you have first reviewed my class notes, and then any relevant resources.

## Halfway Gifts
* Two tools you may start using now.

### GitHub for Mac
* https://mac.github.com/


### RubyMine
* https://www.jetbrains.com/ruby/

User Name: The Iron Yard

```
===== LICENSE BEGIN =====
664519-12052014
00000Y0oG1403P"YAs0Fzu5rce9S"D
FJGt2JrkDchl1hitYrPaeoMojvk825
PqcR4X9aubaeovP4rCqnPDbb9iLP"Y
===== LICENSE END =====
```

* Add _.idea_ to all your .gitignore files to not check in all the workspace files or they will conflict with other developers.

* [Productivity Overview] (https://www.youtube.com/watch?v=wuH8OwbajyM&index=6&list=PLQ176FUIyIUZktev2DKrprwfl-OzQ-c4T)

* [Other Videos](https://www.youtube.com/playlist?action_edit=1&list=PLQ176FUIyIUZktev2DKrprwfl-OzQ-c4T)

#### Model Dependency diagram
* Alt Cmd U

#### Database
* View Database: View > Tool Windows > Database
* Table Editor

#### Todos
* Put a comment with `TODO comment`
* View > Tool windows > TODO

#### Misc
* Bundler `Tools > Bundler > Install`
* rake db:migrate `Run`

## Assignment 47
* Do the [CSS layout tutorial](http://learnlayout.com/)
* Remember to ignore _.idea_ directory from your apps via .gitignore
* Become familiar with RubyMine
* Watch more [tutorials](https://www.youtube.com/playlist?action_edit=1&list=PLQ176FUIyIUZktev2DKrprwfl-OzQ-c4T)
* Review the [documentation](https://www.jetbrains.com/ruby/documentation/)

# Tuesday

## Gavin on debugging an app

## Assignment 48, Debugging a Rails Application
* Read about ri [Up and Running With Ruby Interactive](http://samuelmullen.com/2012/01/up-and-running-with-ruby-interactive-ri/), [5 Reasons You Should Use ri To Read Ruby Documentation](http://www.jstorimer.com/blogs/workingwithcode/7766081-5-reasons-you-should-use-ri-to-read-ruby-documentation)
* Try [Dash](http://kapeli.com/dash)
* Try [OmniRef](https://www.omniref.com/)
* Sign up to use the [Suncoast Dev Slack](http://suncoast.io)
* Install the [better_errors gem](https://github.com/charliesome/better_errors) in your Pinterest application. Create an error to see how it works.
* Read about the [Rails logger](http://guides.rubyonrails.org/debugging_rails_applications.html) and implement some lines in your controller. Output an instance variable using the `.inspect` method to the log. Paste the section of your log file in a comment in this issue. In an issue comment direct me to where you have added the logger statements. (Yes, in this case you can check logger statements in).
* Read about using the [pry console debugger](https://github.com/nixme/pry-debugger) and try it in a controller action.

# Wednesday

## Review all half way challenge questions and ensure everyone understands all concepts

## Show creating a method that is the same as the association
* Instagram app, User model
* belongs_to and has_one are always singular (returns nil or one object)
* belongs_to uses a foreign key to identify which, one object, the child object belongs to
* has_many returns a collection of 0 or more (but always a collection)

## Assignment 49 - groups of 4 (each side of table)
* Create a checklist of things to do to create a new Rails app, version control it in git, share it in GitHub and finally, get it running on Heroku.
* Use [Markdown](https://help.github.com/articles/markdown-basics/) to create the list. Put it in your _Assignments_ git repo and push it to GitHub.

## Query interface
* http://guides.rubyonrails.org/active_record_querying.html
* Create a new Rails app using the models in the query guide so we can try them: Client, Address, Order, Role

## Assignment 50
* Reread the [ActiveRecord Query Interface doc](http://guides.rubyonrails.org/active_record_querying.html)
* Create a new Rails app, and the four models mentioned in the guide (with proper migrations): Client, Address, Order, Role
* Create just one controller (call it anything), with one action
* Make that one action the root
* Within that controller, try all the query samples from the query guide, section 1.1 (skipping the batches) and sections 2, 3, 4, and 5 and put a comment above as to why each is used.
* The view can just say "See controller" (no output is expected)
* No other views or scaffolds are required.
* You many need to create some basic seed data for the four models.
* Don't go overboard and make this too complex.

# Thursday

## Review the checklists
* https://github.com/tomwill1701/Assignments/blob/master/a49.md
* https://github.com/kjswartz/Assignments/blob/master/assignment_49/Rails_Checklist.md

## Counter Cache
* http://guides.rubyonrails.org/association_basics.html, section 4.1.2.3

## GitHub flow and branching
* If you thought git had saved you before, branching will help you even more.
* https://training.github.com/kit/downloads/github-git-cheat-sheet.pdf
* https://guides.github.com/introduction/flow/
* Show fixing Instagram like text
* Create branch first:

```
git branch
git checkout -b fix_like_text
git branch
```

* Do fix
* Switch back to master; changes are gone; switch back to see them again
* Push branch to GitHub

```
git push origin fix_like_text
```

* Look at branch on GitHub
* Create pull request
* Show mock conversation
* Accept and merge
* See code now in master
* Pull down master
* Delete fix_like_text from local and github
* Create a new branch, switch back to master
* Edit something in master, show that it is not in the new branch
* Create a new PR. Should show that it cannot be merged.
* Merge from master to new branch to get the latest. Commit.
* See PR again.

## Assignment 51: GitHub Flow, Branching, Favorite Movies
* Review what a [counter cache](http://guides.rubyonrails.org/association_basics.html) is (just section 4.1.2.3).
* Review [The Flow](https://guides.github.com/introduction/flow/)
* Read [Git Branching](http://git-scm.com/book/ca/v1/Git-Branching), sections 3.1 - 3.5
* Watch this [90 minute video](https://vimeo.com/108798680) on using Git. The password is _ironyard_.
* Clone my [movie_ratings app](https://github.com/theironyard-tampabay/movie_ratings)
* Create a new branch for this app, so you can add new functionality to it.
* In this branch, add a MovieFavorite model to the app to keep track of a user's favorite movies. In the existing movie controller app, also add a 'favorite' and 'unfavorite' action to create or destroy an appropriate record showing the movie has been favorited by the logged in user.
* The option to favorite a movie should be next to the current option to rate a movie. Note: like the Instagram app, no form is needed. Once favorite, the link should change to unfavorite.
* Also add a new action and view under account controller to show all the user's favorite movies. Add a link to this new page onto the nav.
* When the functionality is added and committed to the new branch, push the new branch to your GitHub repo, and place a pull request.
* Copy the PR link into a comment here. Do not accept the PR so I can see it pending. I will review, and provide feedback.
