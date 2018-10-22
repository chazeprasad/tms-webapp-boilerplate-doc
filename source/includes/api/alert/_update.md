## Update a Specific Alert

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.alertizen+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const payload = {
  is_active: false
}

const url = "https://alertsizen.herokuapp.com/api/alerts/1"
http.put(url, payload);
```

```swift
let url = "https://alertsizen.herokuapp.com/api/alerts/1"

let headers: HTTPHeaders = [
  "Accept": "application/vnd.alertizen+json;version=1;"
  "Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
]

let payload: [String: Any] = [
    "is_active": false
]

Alamofire.request(url, method: .put, parameters: payload, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
  print(response)
}

```

```shell
curl https://alertizen.herokuapp.com/api/alerts/1
  -H "Accept: application/vnd.alertizen+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X PUT
  --data '{ "is_active": false }'
```

> The above command returns JSON structured like this:

```json
{
    
}
```

This endpoint retrieves a specific Alert.

### HTTP Request

`PUT https://alertsizen.herokuapp.com/api/alerts/<ID>`

### Request Payload

Parameter | Required | Description
--------- | ------- | -----------
msg_id | Optional | Message ID of the Alert
title | Optional | Title or Subject of the Alert
body | Optional | Body of the Alert
msg_type | Optional | Message Type of the Alert
address | Optional | Address of the Alert
lat | Optional | Latitude of the Alert
lng | Optional | Longitude of the Alert
msg_date_time | Optional | Date and Time of the Alert



### URL Parameters

Parameter | Required | Description
--------- | ------- | -----------
ID | Required | The ID of the Alert to find.

