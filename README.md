# Boulders on Broadway mobile App

## Overview:
  The Boulders on Broadway Mobile App will allow customers to see the beers that are
  currently On Tap. The app will be comprised of a beer list, with photo and ratings.
  Happy Hour drink specials and prices will be available within the app for customers
  to see.
  
## Customer Functionality: 
Develop a basic android application that allows users to: (in order of importance)

-Look up current Boudler's on Broadway Draft list

-Pull up background information about each draft beer

-See Calendar of upcoming events

-List contact information and directions

-Browse current menu offerings

-View happy hour info and special offers

-Push notification when new beer is tapped (at manager's discretion)

## Employee Functionality

  -Login via email/password
  
  -Create / Update / ? Delete ? Beers in the Overall Beer Database
  
  -Create / Update / Terminate the On Tap list of Beers
  
  -Create / Update / Terminate the Bottled Beer list
  
  -Create / Update / Terminate Happy Hour specials and Prices.
  
  -Create Events and Non-Happy Hour Specials
  
  -Log Out

##   Potential Features:
  1. Allow customers to log in. See their drink history.
  2. Drink Challenges - created by employees, completed by Customers.
  3. Allow customers to review beers - Add their Ratings.
  
## How It Will Work

  Back end Database: MongoDB 
  Using a server side language (PHP) process requests for data and 
  submit it to the mobile application in JSON. 
  The webpage will be a Single page application using AngularJS and the server side API to manage the database.
  
  The mobile app will parse the JSON and use it as the data to display the draft list and detailed view of each beer. 
  All app code is done with html/css/js using the bootstrap framework to simpilfy styling.  The app is coded as if it is 
  mobile site and uses PhoneGap (www.phonegap.com) to create a native application. Details on using PhoneGap are in the   
  Installation instructions below.
  

##How to Install
  1. Download the 'BOB.apk' file that is located in the BOB folder
  2. Connect your android device to your computer via usb and move the file to your phone
  3. Ensure that installing apps from unknown sources is enabled in your android settings (under security in settings)
  4. Locate and click on file to install app
  
  NOTE1: still working out issues with back-end, beer list info is pulled from a json hosting site called 'myjson.com' (https://api.myjson.com/bins/299d6) to show the app can pull and use json data from a webserver, and it will also give an idea of draft list's appearance in the app. 

UPDATE: back-end site is up and running viewable at tappdmonkey.beer/beers with JSON data viewable at tappdmonkey.beer/beers.json  There is still an issue with the server denying the app access because it isn't on the same domain, this will be fixed shortly and back-end will be fully functional for app's beta testing.
  
  NOTE2: The app was built using html/css/javascript and we are using PhoneGap to compile that code into a native app.  Any changes to the app will be done through the code files in the BOB folder.  To then compile into a native app PhoneGap will need all the files in the BOB folder EXCEPT the 'BOB.apk' file.  To use PhoneGap to build the app you will need to create an account at Phonegap.com. Once you are signed-in go to the 'Apps' section to create a new app. From there you can either link to a github repo or submit a zipfile containing all the code mentioned above. PhoneGap will then compile the code and produce an .apk file for installation of the native app.
  
  ##Contributors:

  - Benjamin Worcester
  - Joy Jackson
  - Jeff Ding
  - Jake Richardson 
  - Steven Turturo
