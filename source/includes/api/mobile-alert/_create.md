## Create a Mobile Alert Settings

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.alertizen+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const payload = {
  is_active: true
  device_token: "11112222333344441111222233334444",
  os_name: "iOS",
  os_version: "11.1",
  owner: 1
}

const url = "https://alertizen.herokuapp.com/api/mobile-alerts"
http.post(url, payload);
```


```swift
let url = "https://alertsizen.herokuapp.com/api/mobile-alerts"

let headers: HTTPHeaders = [
  "Accept": "application/vnd.alertizen+json;version=1;"
  "Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
]

let payload: [String: Any] = [
  "is_active": true
  "device_token": "11112222333344441111222233334444",
  "os_name": "iOS",
  "os_version": "11.1",
  "owner": 1  
]

Alamofire.request(url, method: .post, parameters: payload, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
  print(response)
}
```

```shell
curl https://alertizen.herokuapp.com/api/mobile-alerts
  -H "Accept: application/vnd.alertizen+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X POST
  --data '{ "is_active": true "device_token": "11112222333344441111222233334444", "os_name": "iOS", "os_version": "11.1", "owner": 1 }'
```


> The above command returns JSON structured like this:

```json
{
    "id": 1,
    "is_active": true,
    "device_token": "11112222333344441111222233334444",
    "os_name": "iOS",
    "os_version": "11.1",
    "owner": "1",
    "created_at": "2018-10-20T14:12:50.894Z",
    "updated_at": "2018-10-20T14:12:50.894Z"
}
```

This endpoint create a Mobile Alert Settings.

### HTTP Request

`POST https://alertizen.herokuapp.com/api/mobile-alerts`

### Request Payload

Parameter | Required | Description
--------- | ------- | -----------
is_active | Optional | By default true
device_token | Required | Device Token of  of the Mobile.
os_name | Required | OS Name of the Mobile.
os_version | Required | OS Version of the Mobile.
owner | Required | ID of the User.



