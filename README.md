

# pdit_backend
## Ruby on Rails backend for paidit web app 
##[\(paidit on github\)](http://github.com/jcskillings/paidit)

## Iteration 1

### Models
Models consist of User, Bill and Reminder which have controllers that expose a RESTful interface

Relationships between the models are
* User -> one to many -> Bill
* Bill -> one to many -> Reminder
* User -> one to many -> Reminder (through Bill)

