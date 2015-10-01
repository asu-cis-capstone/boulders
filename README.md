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
-Push notification when new beer is tapped (at manager's discretion)
-See Calendar of upcoming events
-List contact information and directions
-View happy hour info and special offers
-Browse current menu offerings

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

  Back end Database: MongoDB or Postgre Database
  Using a server side language ( Ruby on Rails or PHP or Python tbd) process requests for data and 
  submit it to the mobile application or website in JSON.
  
  The mobile app will parse the JSON and use it as the data in the application
  The webpage will be a Single page application using AngularJS and the server side API to manage the database.

##How to Install
  1. Download the 'sampleApp-debug.apk' file that is located in the BOB folder
  2. Connect your android device to your computer via usb and move the file to your phone
  3. Ensure that installing apps from unknown sources is enabled in your android settings (under security in settings)
  4. Locate and click on file to install app
  
  NOTE: still working out issues with back-end, beer list info is pulled from local .json file to give an idea of app's appearance.
  NOTE2: The app was built using html/css/javascript and we are using PhoneGap to compile that code into a native app.  Any changes to the app
         will be done through the code files in the BOB folder.  To then compile into a native PhoneGap will need all the files in the BOB folder
		 EXCEPT the 'sampleApp-debug.apk' file.
  
  ##Contributors:

  - Benjamin Worcester
  - Joy Jackson
  - Jeff Ding
  - Jake Richardson 
  - Steven Turturo
