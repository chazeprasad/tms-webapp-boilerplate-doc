## Create a Email Alert Settings

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.alertizen+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const payload = {
  is_active: true
  email_id: "ricky@xyc.com", 
  owner: 1
}

const url = "https://alertizen.herokuapp.com/api/email-alerts"
http.post(url, payload);
```

```swift
let url = "https://alertsizen.herokuapp.com/api/email-alerts"

let headers: HTTPHeaders = [
  "Accept": "application/vnd.alertizen+json;version=1;"
  "Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
]

let payload: [String: Any] = [
  "is_active": true
  "email_id": "ricky@xyc.com", 
  "owner": 1
]

Alamofire.request(url, method: .post, parameters: payload, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
  print(response)
}
```


```shell
curl https://alertizen.herokuapp.com/api/email-alerts
  -H "Accept: application/vnd.alertizen+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X POST
  --data '{ "is_active": true "email_id": "ricky@xyc.com", "owner": 1 }'
```

> The above command returns JSON structured like this:

```json
{
    "id": 1,
    "is_active": true,
    "email_id": "ricky@xyc.com",
    "owner": "1",
    "created_at": "2018-10-20T13:56:52.803Z",
    "updated_at": "2018-10-20T13:56:52.803Z"
}
```

This endpoint create a Email Alert Settings.

### HTTP Request

`POST https://alertizen.herokuapp.com/api/email-alerts`

### Request Payload

Parameter | Required | Description
--------- | ------- | -----------
is_active | Optional | By default true
email_id | Required | Email ID of the Email Alert Settings.
owner | Required | ID of the User.



