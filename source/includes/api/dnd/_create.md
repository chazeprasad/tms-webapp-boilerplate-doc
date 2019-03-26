## Create a Do Not Disturb Settings

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.sample+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const payload = {
  manual: false
  scheduled: false
  from: "10:30 PM", 
  to: "08:00 PM", 
  owner: 1
}

const url = "https://sample.herokuapp.com/api/dnds"
http.post(url, payload);
```


```swift
let url = "https://alertsizen.herokuapp.com/api/dnds"

let headers: HTTPHeaders = [
  "Accept": "application/vnd.sample+json;version=1;"
  "Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
]

let payload: [String: Any] = [
  "manual": false
  "scheduled": false
  "from": "10:30 PM", 
  "to": "08:00 PM", 
  "owner": 1
]

Alamofire.request(url, method: .post, parameters: payload, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
  print(response)
}
```


```shell
curl https://sample.herokuapp.com/api/dnds
  -H "Accept: application/vnd.sample+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X POST
  --data '{ "manual": false "scheduled": false "from": "10:30 PM", "to": "08:00 PM", "owner": 1 }'
```

> The above command returns JSON structured like this:

```json
{
    "id": 1,
    "manual": false,
    "scheduled": false,
    "from": "2000-01-01T22:30:00.000Z",
    "to": "2000-01-01T08:00:00.000Z",
    "owner": "1",
    "created_at": "2018-10-20T15:28:20.564Z",
    "updated_at": "2018-10-20T15:28:20.564Z"
}
```

This endpoint create a Do Not Disturb Settings.

### HTTP Request

`POST https://sample.herokuapp.com/api/dnds`

### Request Payload

Parameter | Required | Description
--------- | ------- | -----------
manual | Optional | By default false
scheduled | Optional | By default false
from | Optional | Start Time of the Do Not Disturb Settings.
to | Optional | Stop Time of the Do Not Disturb Settings.
owner | Required | ID of the User.



