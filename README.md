#**Title:**
dinr

#**Team Members:**
Dipsikha Halder, Jenny Li, Jeffrey Lin, Saloni Shah

#**Demo Link:**
TBD

**Idea:** An application where students can find a group to eat with at the Cal Dining Hall.

##User
-has username, password, name, year, major, and phone number
-name and year need to be validated, major and phone number are optional
-belongs to a group

##Group
-has location (i.e. dining hall) and a time
-has many users

##Locations
-has address
-has list of groups that have visited locations

##Features
-Users can log in
-Any user can join existing groups or make a new group
-Set list of locations (dining halls and cafes)
-Users can create posts within a group
-A location page has a list of groups
-A group is deleted 24 hours after the event is over

##Division of Labor
Jeffrey - setup workspace by 4/19
Jenny - create the models and the seed file by 4/19
Dipsikha - controller: user, group, location by 4/19
Saloni - figure out how to use Bootstrap gem and create views by 4/19
extra misc. bug fixing throughout by everyone
Saloni and Jenny - fix last minute bugs in group controller, add view profile option, clean up UI, and screencast 4/29

Bootstrap gem: https://github.com/seyhunak/twitter-bootstrap-rails
Chronic gem (for representing time): http://chronic.rubyforge.org/


##RUBRIC:	
At least 3 models in the app, each with at least 1 validation:
- groups
- location
- pages
- user
- validations: name, year, major, etc.


At least 1 relationship in the app
- users have and belong to many groups
- groups have and belong to many users

At least 1 gem that is not a default gem and not a gem we introduced in class
- bootstrap
- chronic

Must have a seed file
- seed file present

Must have some styling (not just plain text) and deploy application to Heroku
- cool effects on locations page
- dropdown effect for choosing dining halls

A writeup which you will put in the README.md file
- this!

Must have about equal division of labor
- yup

Submit a 2 minute screencast demo
- Youtube link: http://youtu.be/MgC8jxGNpZA
