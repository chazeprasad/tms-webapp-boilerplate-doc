---
title: API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell
  - ruby
  - python
  - javascript

toc_footers:
  - <a href='https://www.sample.com'>sample</a>

includes:
  - errors

search: true
---

# Introduction

Welcome to the sample API! sample Web and Mobile app developers can use the API to access sample API endpoints, which can get and set user information in our database. It also provides APIs for sending Push Notifications, Email Alerts and Text Alerts.

We have language bindings in Shell and JavaScript! You can view code examples in the dark area to the right, and you can switch the programming language of the examples with the tabs in the top right.

Also provided a [Postman File](https://www.sample.com). Feel free to download and import the Postman file to test the APIs.

sample uses JWT Token to allow access to the API. Please Register / Login to get a JWT Token.  

sample API expects for the JWT AUTH Token to be included in all API requests (except user registration and login) to the server in a header that looks like the following:

`Authorization: JWT-AUTH-TOKEN`

<aside class="notice">
You must replace <code>JWT-AUTH-TOKEN</code> with your JWT Auth Token.
</aside>


# Authentication


## User Registration

```javascript
const http = require('http');
const url = "https://sample.herokuapp.com/auth/signup"
const payload = {
  first_name: "Ricky",
  last_name: "Ponting",
  email: "ricky@xyz.com",
  password: "allowme",
  confirm_password: "allowme" 
}
http.post(url, payload);
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
  email: "ricky@xyz.com",
  passowrd: "allowme"
}
http.post(url, payload);
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
email | Required | Email id of the user.
password | Required | Password.

<aside class="success">
Remember — On successful registration you will get a JWT Auth Token!
</aside>



# Kittens

## Get All Kittens

```javascript
const kittn = require('kittn');

let api = kittn.authorize('JWT-AUTH-TOKEN');
let kittens = api.kittens.get();
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 1,
    "name": "Fluffums",
    "breed": "calico",
    "fluffiness": 6,
    "cuteness": 7
  },
  {
    "id": 2,
    "name": "Max",
    "breed": "unknown",
    "fluffiness": 5,
    "cuteness": 10
  }
]
```

This endpoint retrieves all kittens.

### HTTP Request

`GET http://example.com/api/kittens`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
include_cats | false | If set to true, the result will also include cats.
available | true | If set to false, the result will include kittens that have already been adopted.

<aside class="success">
Remember — a happy kitten is an authenticated kitten!
</aside>

## Get a Specific Kitten

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('JWT-AUTH-TOKEN')
api.kittens.get(2)
```

```python
import kittn

api = kittn.authorize('JWT-AUTH-TOKEN')
api.kittens.get(2)
```

```shell
curl "http://example.com/api/kittens/2"
  -H "Authorization: JWT-AUTH-TOKEN"
```

```javascript
const kittn = require('kittn');

let api = kittn.authorize('JWT-AUTH-TOKEN');
let max = api.kittens.get(2);
```

> The above command returns JSON structured like this:

```json
{
  "id": 2,
  "name": "Max",
  "breed": "unknown",
  "fluffiness": 5,
  "cuteness": 10
}
```

This endpoint retrieves a specific kitten.

<aside class="warning">Inside HTML code blocks like this one, you can't use Markdown, so use <code>&lt;code&gt;</code> blocks to denote code.</aside>

### HTTP Request

`GET http://example.com/kittens/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the kitten to retrieve

## Delete a Specific Kitten

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('JWT-AUTH-TOKEN')
api.kittens.delete(2)
```

```python
import kittn

api = kittn.authorize('JWT-AUTH-TOKEN')
api.kittens.delete(2)
```

```shell
curl "http://example.com/api/kittens/2"
  -X DELETE
  -H "Authorization: JWT-AUTH-TOKEN"
```

```javascript
const kittn = require('kittn');

let api = kittn.authorize('JWT-AUTH-TOKEN');
let max = api.kittens.delete(2);
```

> The above command returns JSON structured like this:

```json
{
  "id": 2,
  "deleted" : ":("
}
```

This endpoint deletes a specific kitten.

### HTTP Request

`DELETE http://example.com/kittens/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the kitten to delete

