## Create a Text Alert Settings

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.alertizen+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const payload = {
  is_active: true
  phone_no: "1231231234",
  phone_company: "sprint",
  owner: 1
}

const url = "https://alertizen.herokuapp.com/api/text-alerts"
http.post(url, payload);
```


```swift
let url = "https://alertsizen.herokuapp.com/api/text-alerts"

let headers: HTTPHeaders = [
  "Accept": "application/vnd.alertizen+json;version=1;"
  "Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
]

let payload: [String: Any] = [
  "is_active": true
  "phone_no": "1231231234",
  "phone_company": "sprint",
  "owner": 1
]

Alamofire.request(url, method: .post, parameters: payload, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
  print(response)
}
```

```shell
curl https://alertizen.herokuapp.com/api/text-alerts
  -H "Accept: application/vnd.alertizen+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X POST
  --data '{ "is_active": true "phone_no": "1231231234", "phone_company": "sprint", "owner": 1 }'
```

> The above command returns JSON structured like this:

```json
{
    "id": 1,
    "is_active": true,
    "phone_no": "1231231234",
    "phone_company": "sprint",
    "owner": "1",
    "created_at": "2018-10-20T14:12:50.894Z",
    "updated_at": "2018-10-20T14:12:50.894Z"
}
```

This endpoint create a Text Alert Settings.

### HTTP Request

`POST https://alertizen.herokuapp.com/api/text-alerts`

### Request Payload

Parameter | Required | Description
--------- | ------- | -----------
is_active | Optional | By default true
phone_no | Required | Phone Number of the Text Alert Settings.
phone_company | Required | Phone Company of the Text Alert Settings.
owner | Required | ID of the User.



