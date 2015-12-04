# Boulders on Broadway mobile App

## Overview:
  The Boulders on Broadway Mobile App will allow customers to see the beers that are
  currently On Tap. The app will be comprised of a beer list, with photo and ratings.
  Happy Hour drink specials and prices will be available within the app for customers
  to see.
  
## Customer Functionality: 
Develop a basic android application that allows users to: (in order of importance)

-Look up current Boudler's on Broadway Draft list (Working)

-Pull up background information about each draft beer (Working)

-See Calendar of upcoming events (partially functional)

-List contact information and directions (done)

-Browse current menu offerings (not done)

-View happy hour info and special offers (not done)

-Push notification when new beer is tapped (at manager's discretion) -- (not working)

## Employee Functionality

  -Login via email/password (partially implemented on local development)
  
  -Create / Update Beers in the Overall Beer Database (Working)
  
  -Create / Update  the On Tap list of Beers (Working)
  
  -Create / Update the Bottled Beer list (Can be saved to DB, but not implemented in native app)
  
  -Create / Update Terminate Happy Hour specials and Prices. (not working)
  
  -Create Events and Non-Happy Hour Specials (not working, events link currently redirects to Boulders website event page)
  
  -Log Out 

##   Potential Features:
  1. Allow customers to log in. See their drink history.
  2. Drink Challenges - created by employees, completed by Customers.
  3. Allow customers to review beers - Add their Ratings.
  
## How It Will Work

  Back end Database: MongoDB 
  Using a server side language (NodeJS) process requests for data and 
  submit it to the mobile application in JSON. 
  The webpage will be a Single page application using a MEAN stack and the server side API to manage the database. API will be built using the web framwork Express and the library Node-Restful. The node app will be hosted by openshift to allow us to focus on coding rather than learning how to configure the server.  All code for the api and management site is located in the Node App foler.
  
  The mobile app will parse the JSON and use it as the data to display the draft list and detailed view of each beer. 
  All app code is done with html/css/js using the bootstrap framework to simpilfy styling.  The app is coded as if it is 
  mobile site and uses PhoneGap (www.phonegap.com) to create a native application. Details on using PhoneGap are in the   
  Installation instructions below.  All code for the mobile app is located in the BOB folder.
  

##How to Install
  1. Search 'Boulders on Broadway' in the Google Play store
  2. Download and install the app
  3. App may also be installed via the BOB-release.apk file located in the root folder of this repo.
 
  NOTE: The app was built using html/css/javascript and we are using PhoneGap to compile that code into a native app.  Any changes to the app will be done through the code files in the BOB folder.  To then compile into a native app PhoneGap will need all the files in the BOB folder.  To use PhoneGap to build the app you will need to create an account at Phonegap.com. Once you are signed-in go to the 'Apps' section to create a new app. From there you can either link to a github repo or submit a zipfile containing all the code mentioned above. PhoneGap will then compile the code and produce an .apk file for installation of the native app.
  
  ##Contributors:

  - Benjamin Worcester
  - Joy Jackson
  - Jeff Ding
  - Jake Richardson 
  - Steven Turturo
