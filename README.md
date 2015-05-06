

# pdit_backend
## Ruby on Rails backend for paidit web app  [\(paidit on github\)](http://github.com/jcskillings/paidit)

### CS506 - Final Submission
The rails application can be run easily as a workspace on [cloud nine IDE](c9.io)
by starting a workspace fromURL and using this repo's URL.

### Models
Models consist of User, Bill and Reminder which have controllers that expose a RESTful interface

Relationships between the models are
* User -> one to many -> Bill
* User -> one to many -> notifType
* User -> one to many -> Log
* Reminder class not in use currently

User/Session Authentication
* Handled by Devise gem
* Customised devise settings to allow login with username and email

Email and SMS
* Email handled with ActionMailer and custom mailer classes
* SMS using Smseasy gem
* Both currently use STMP through a gmail account - would need to change for production

Reminder Shceduling
* Attempted with both Crono gem and Whenever gem (in combination with ActiveJob and cron respectively)
* Does not function properly in Cloud9 IDE envirionment
 

###HTTP requests
The rails server will currently accept property formatted GET, POST and other RESTful HTTP request for single objects or entire tables. This is the primary means of communication between the front end and backend. The front end will generally transact in JSON objects over HTTP.

Front end Backend Integration
* front end (paidit) sends HTTP restful requests with JSON data to routes in rails
* Rails is configured with rackcors gems and other custom settings to allow cross-domain requests
* There are browser compatibility issues at this time (firefox). Chrome allows the http requests with current configuration
