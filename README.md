# Match-To-Speak-App
## Overview
'Match to Speak' is an app to help people learn and teach natural languages, by matchng them with others in their community.

The app use sqlite3 db, with Rails.
The front-end content is rendered with vanilla Javascript.
This project is a proof of concept more than a fully functional service.
It was built with scaling in mind, but for future releases would need something like a Postgres DB to function better as a deployed web app.


## User Stories Goals
As a user, one should be able to...
- Have an understanding of the service / Be given an instructions page
- Sign in/ Sign up
- Search for people based on language preferences (a stretch goal being to filter by distance) - not yet implemented
- Be served a list of matches (people teaching languages I want to learn, and people learning languages I want to teach)
- Write and read messages from others - not yet implemented
- Be given suggested safe (verified) places to meet, w/ code words and safety tips  - not yet implemented

## Technical Requirements
This project was required to be...
- A Ruby on Rails app, with user access to full CRUD for at least one database table

## How to test the project
1. This is a Ruby app, so you need to make sure you have Ruby installed on your system.
2. The Ruby version used in development was `ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-linux]`
3. Clone this repository to your machine, bundle install, and run the rails server on port 3000 (rails s -p3000) and open the home.html file in the frontend folder

## Contibutor's Guide
At this time, some additional base functionality needs to be added before it makes sense to ask for contributor help.

## Videos
1. Overview (Login, see example user data)
![](overview.gif)
