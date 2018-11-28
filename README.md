Welcome to my Coin Machine API

 > by Jennifer Pazos

 <br />
 The url for the api is https://jenniferscoinmachine.herokuapp.com
 <br />
 Below are the possible routes and corresponding attributes.

 <br />


**Coin Routes:**

| Method | Action | Route | Attributes | Notes |
|--------|--------|------|------|-------|
| GET |  INDEX | /coins|           | View all coins |
| GET |  SHOW | /coins/:id | id of the coin| View specific coin|
| GET | Total | /coins/total |    | View the total value of all coins|
| POST | CREATE | /coins | name, value, quantity | quantity will default to 0 if not provided|
| PUT | UPDATE | /coins/:id | id of the coin, name, value, quantity| |
| DELETE | DESTROY | /coins/:id | id of the coin |Delete a coin from the machine|





**Transaction Routes:**

| Method | Action | Route | Attributes | Notes|
|--------|--------|-------|------------|------|
| GET | INDEX |/transactions||View all transactions|
| GET | by_user | /transactions/by_user | |View all transactions in order of user|
| POST | DEPOSIT | /transactions/deposit | coin_id | Deposit a coin|
| POST | WITHDRAWAL | /transactions/withdrawal | coin_id | Withdraw a coin|
