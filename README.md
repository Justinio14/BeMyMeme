<h1> BeMyMeme </h1>

Link to app on Heroku at: <a href="http://bemymeme.herokuapp.com">http://bemymeme.herokuapp.com</a>

<h3>Makers Academy Final Project</h3>

 Team Members
<ul>
  <li><a href="https://github.com/thesedatedprince">Matt Perry</a></li>
  <li><a href="https://github.com/gbhachu">Gurminder Bhachu</a></li>
  <li><a href="https://github.com/olwend">Olwen Davies</a></li>
  <li><a href="https://github.com/Justinio14">Justin Butwell</a></li>
  <li><a href="https://github.com/herecomesjaycee">Jaycee Cheong</a></li>
  <li><a href="https://github.com/BasileKoko">Basile Koko</a></li>
</ul>

 Index Table
[Task](#task)   |   [Technologies](#technologies)   | [Languages](#languages) |  [User Stories](#stories)   | [Walkthrough and Screenshots](#walkthrough)  | [Installation](#installation)  |   [Testing](#testing)   
***

<a name="task"> Task </a>


To create web-based dating app that allows users to
express themselves through memes. The app requires users to be able to upload memes to their profile, from an existing memes library. Users should also be able to chat to each other in realtime.

The app should be created with strong TDD principles throughout. We will also be adhering to XP (extreme programming) methodology, and framing our progress in terms of XP values.
***


<a name="technologies"> Technologies </a>
<ul>
  <li> Rails 5.0.2 </li>
  <li> RSpec </li>
  <li> Capybara </li>
  <li> Action Cable </li>
  <li> Heroku </li>
  <li> Bootstrap </li>
  <li> jQuery </li>
  <li> API Integration </li>
  <li> Redis </li>
  <li> Active Record </li>
</ul>


<a name="languages"> Languages </a>
<ul>
  <li>Ruby </li>
  <li>JavaScript</li>
  <li>SQL</li>
  <li>HTML</li>
  <li>CSS</li>
</ul>
***

<a name="stories"> User Stories </a>

```
As a visitor
So I know what BeMyMeme is about
The homepage would have a preview of the chat interaction (splash screen)

As a visitor
So I can participate on BeMyMeme
I should be able to create a profile and sign in

As a user
So I can hide my meme activity
I should be able to sign out

As a user
So I can see potential matches
I should be able to browse other users' profiles

As a user
So people can see my information
I should have a profile page

As a user
So I have an extensive toolbox of memes at my disposal
I should be able to browse from a gallery of memes

As a user
If I want to be able to initiate a proper chat with someone
I should be able to send a message to another user

As a user
If I want to respond to a message from someone
I should be able to send a message within a chat window exclusive to that user

As a user
Because I have a low patience threshold
I should receive new messages in realtime
```
***

<a name="walkthrough"> Walkthrough and Screenshots </a>

1. Visit <a href="http://bemymeme.herokuapp.com">http://bemymeme.herokuapp.com</a>
2. Click 'Sign up'
  ----SCREENSHOT!!!---
3. Fill out the form - remember to upload a profile pic!
  ----SCREENSHOT!!!---
4. Visit 'My Profile'
  ---SCREENSHOT!!!---
5. Click 'Add memes' - choose memes that express you from a gallery of memes!
  ---SCREENSHOT!!!---
6. Click "LINK??!?!??!!" to view all other users.
  ---SCREENSHOT!!!---
7. Click on a user's profile to see their info.
  ---SCREENSHOT!!!---
8. Click 'Chat' to start up a conversation
  ---SCREENSHOT!!!----
9. Select the user you wish to chat with.
  ---SCREENSHOT!!!----
10. You can now send and receive messages in realtime!!!
  ---SCREENSHOT!!!----
***

<a name="installation"> Installation </a>

1. In terminal, ```git clone https://github.com/Justinio14/BeMyMeme.git```.
2. Run ```bundle install```.
3. Create Databases ```rake db:create``` then ```rake db:migrate```.
4. To run app on server, in terminal enter ```rails s```.
5. Visit ```localhost:3000``` to begin using app.
***

<a name="testing"> Testing </a>

[Test Coverage](https://github.com/Justinio14/BeMyMeme/blob/master/coverage/index.html)
A TDD approach was taken.  There were challenges to testing Chat across 2 clients and in the absence of an action cable test framework; this is reflected in the stats. 


---SCREENSHOTS---
