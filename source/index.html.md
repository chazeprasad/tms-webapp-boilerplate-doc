---
title: API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - javascript

toc_footers:
  - <a href='https://www.highradius.com'>Highradius</a>


includes:
  - api/monitoring-area/index
  - api/monitoring-area/show
  - api/monitoring-area/create
  - api/monitoring-area/update
  - api/monitoring-area/delete
  
  - api/email-alert/index
  - api/email-alert/show
  - api/email-alert/create
  - api/email-alert/update
  - api/email-alert/delete
  
  - api/text-alert/index
  - api/text-alert/show
  - api/text-alert/create
  - api/text-alert/update
  - api/text-alert/delete
  
  - api/mobile-alert/index
  - api/mobile-alert/show
  - api/mobile-alert/create
  - api/mobile-alert/update
  - api/mobile-alert/delete
  
  - api/dnd/index
  - api/dnd/show
  - api/dnd/create
  - api/dnd/update
  - api/dnd/delete
  
  - api/alert/index
  - api/alert/show
  - api/alert/create
  - api/alert/update
  - api/alert/delete
  
  - api/sector/index
  - api/sector/show
  - api/sector/create
  - api/sector/update
  - api/sector/delete
  
  - api/beat/index
  - api/beat/show
  - api/beat/create
  - api/beat/update
  - api/beat/delete
  
  - api/market/index
  - api/market/show
  - api/market/create
  - api/market/update
  - api/market/delete
  
  
  
  - errors
 
 
search: true
---

# Introduction

Welcome to the sample API! sample Web and Mobile app developers can use the API to access sample API endpoints, which can get and set user information in our database. It also provides APIs for sending Push Notifications, Email Alerts and Text Alerts.

We have language bindings in Shell, JavaScript and Swift! You can view code examples in the dark area to the right, and you can switch the programming language of the examples with the tabs in the top right.

Also provided a Postman Collection File. Feel free to download the file from left Side Menu.

sample uses JWT(JSON Web Token) Authentication to allow access to the API. Please Register / Login to get a JWT Token.  

sample API expects for the JWT AUTH Token to be included in all API requests (except user registration and login) to the server in a header that looks like the following:

`Authorization: JWT-AUTH-TOKEN`

<aside class="notice">
You must replace <code>JWT-AUTH-TOKEN</code> with your JWT Auth Token.
</aside>

## Versioning

In order to version the API we use server-driven content negotiation where the client (user agent) informs the server what media types it understands by providing an Accept HTTP header.

According to the Media Type Specification, you can define your own media types using the vendor tree i.e. application/vnd.example.resource+json.

Since we don't want to have the version number as part of the URI (this is argued as an anti-pattern), we define a custom vendor media type application/vnd.sample.{version_number}+json giving clients the ability to choose which API version they require.

sample API expects for the API Version to be included in all API requests to the server in a header that looks like the following:

`Accept: application/vnd.sample.{VERSION_NUMBER}+json;`

<aside class="notice">
You must replace <code>VERSION_NUMBER</code> with your Version.
eg: <code> Accept: application/vnd.sample+json;version=1; </code>
</aside>

## Authorization
There are 4 levels of authorization in the API

<aside class="notice">
The Roles are 
<code> <b> 
 USER 
 MANAGER  
 ADMIN </b> and  <b>
 POLICE 
 </b> </code>
</aside>

The Role User have all the privilages on his/her profile and alert/message APIs. Role Admin have full access on all APIs.



# Authentication


## User Registration


```javascript
const http = require('http');
const url = "https://sample.herokuapp.com/auth/signup"
const payload = {
  username: "ricky@xyz.com",
  first_name: "Ricky",
  last_name: "Ponting",
  email: "ricky@xyz.com",
  password: "allowme",
  confirm_password: "allowme" 
}
http.post(url, payload);
```

```swift
let url = "https://sample.herokuapp.com/auth/signup"

var headers: HTTPHeaders = HTTPHeaders()
headers["Accept"] = "application/json"

let payload: [String: Any] = [
  "username": "ricky@xyz.com",
  "first_name": "Ricky",
  "last_name": "Ponting",
  "email": "ricky@xyz.com",
  "password": "allowme",
  "confirm_password": "allowme"
]

Alamofire.request(url, method: .post, parameters: payload, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
  print(response)
}

```

```shell
curl https://sample.herokuapp.com/auth/signup
  -H "Content-Type: application/json"
  -X POST
  --data '{"username": "ricky@xyz.com", "first_name": "Ricky", "last_name": "Ponting", "email": "ricky@xyz.com", "password": "allowme", "confirm_password": "allowme"}'
```

> The above command returns JSON structured like this:

```json
{
  "message": "Account created successfully",
  "auth_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"
}
```

This endpoint register a user.

### HTTP Request

`POST https://sample.herokuapp.com/auth/signup`

### Request Payload

Parameter | Required | Description
--------- | ------- | -----------
username  | Required | Email or Phone Number
first_name | Required | First Name of the user.
last_name | Required | Last Name of the user.
passowrd | Required | Password.
confirm_password | Required | Confirm password.

<aside class="success">
Remember — On successful registration you will get a JWT Auth Token!
</aside>


## User Login

```javascript
const http = require('http');
const url = "https://sample.herokuapp.com/auth/login"
const payload = {
  username: "ricky@xyz.com",
  password: "allowme"
}
http.post(url, payload);
```

```swift
let url = "https://sample.herokuapp.com/auth/login"

var headers: HTTPHeaders = HTTPHeaders()
headers["Accept"] = "application/json"

let payload: [String: Any] = [
  "username": "ricky@xyz.com",
  "password": "allowme"
]

Alamofire.request(url, method: .post, parameters: payload, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
  print(response)
}

```


```shell
curl https://sample.herokuapp.com/auth/signup
  -H "Content-Type: application/json"
  -X POST
  --data '{"username": "ricky@xyz.com", "password": "allowme"}'
```

> The above command returns JSON structured like this:

```json
{
  "auth_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"
}
```

This endpoint login a user.

### HTTP Request

`POST https://sample.herokuapp.com/auth/login`

### Request Parameters

Parameter | Required | Description
--------- | ------- | -----------
username  | Required | Email or Phone Number
password | Required | Password.

<aside class="success">
Remember — On successful login you will get a JWT Auth Token!
</aside>




