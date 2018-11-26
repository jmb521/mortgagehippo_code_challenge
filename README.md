Welcome to my Coin Machine API

by Jennifer Pazos


Coin Routes:

To see all the coins in the machine
GET '/coins'

To see an individual coin
GET '/coins/:id'

To edit a coin's attributes
PUT '/coins/:id'
possible attributes to edit: name, value, quantity

To delete a coin
DELETE '/coins/:id'

To create a new coin
POST '/coins'
include attributes: name, value


Transaction Routes:

To create a new transaction
POST '/transactions'
possible attributes:
