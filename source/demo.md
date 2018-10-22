# Authentication

## User Login

```javascript
const http = require('http');
const url = "https://alertizen.herokuapp.com/auth/login"
const payload = {
  email: "ricky@xyz.com",
  passowrd: "allowme"
}
http.post(payload);
```

> The above command returns JSON structured like this:

```json
{
  "auth_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"
}
```

This endpoint retrieves all kittens.

### HTTP Request

`POST https://alertizen.herokuapp.com/auth/login`

### Request Parameters

Parameter | Required | Description
--------- | ------- | -----------
email | Required | Last Name of the user.
password | Required | Password.

<aside class="success">
Remember — On successful registration you will get a JWT Auth Token!
</aside>
