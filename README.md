

# pdit_backend
## Ruby on Rails backend for paidit web app  [\(paidit on github\)](http://github.com/jcskillings/paidit)

### Iteration 1
The rails application can be run easily as a workspace on [cloud nine IDE](c9.io)
by starting a workspace fromURL and using this repo's URL.

### Models
Models consist of User, Bill and Reminder which have controllers that expose a RESTful interface

Relationships between the models are
* User -> one to many -> Bill
* Bill -> one to many -> Reminder
* User -> one to many -> Reminder (through Bill)

###HTTP requests
The rails server will currently accept property formatted GET, POST and other RESTful HTTP request for single objects or entire tables. This is the primary means of communication between the front end and backend. The front end will generally transact in JSON objects over HTTP.

