## Create a Alert

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.alertizen+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const payload = {
    msg_id: "1111",
    title: "911 Call Record",
    body: "BURGLARY ALARMS",
    msg_type: "911CR",
    address: "1314 WAVERLY AV ,TO,NEAR DORR ST",
    lat: 41.6533470153809,
    lng: -83.5901184082031,
    msg_date_time: "12/10/2013 05:19"  
}

const url = "https://alertsizen.herokuapp.com/api/alerts"
http.post(url, payload);
```

```swift
let url = "https://alertsizen.herokuapp.com/api/alerts"

let headers: HTTPHeaders = [
  "Accept": "application/vnd.alertizen+json;version=1;"
  "Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
]

let payload: [String: Any] = [
  "msg_id": "1111",
  "title": "911 Call Record",
  "body": "BURGLARY ALARMS",
  "msg_type": "911CR",
  "address": "1314 WAVERLY AV ,TO,NEAR DORR ST",
  "lat": 41.6533470153809,
  "lng": -83.5901184082031,
  "msg_date_time": "12/10/2013 05:19" 
]

Alamofire.request(url, method: .post, parameters: payload, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
  print(response)
}

```

```shell
curl https://alertizen.herokuapp.com/api/alerts
  -H "Accept: application/vnd.alertizen+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X POST
  --data '{ "msg_id": "1111", "title": "911 Call Record", "body": "BURGLARY ALARMS", "msg_type": "911CR", "address": "1314 WAVERLY AV ,TO,NEAR DORR ST", "lat": 41.6533470153809, "lng": -83.5901184082031, "msg_date_time": "12/10/2013 05:19" }'
```


> The above command returns JSON structured like this:

```json
{
    "id": 2,
    "msg_id": "1111",
    "title": "911 Call Record",
    "body": "BURGLARY ALARMS",
    "msg_type": "911CR",
    "address": "1314 WAVERLY AV ,TO,NEAR DORR ST",
    "lat": 41.6533470153809,
    "lng": -83.5901184082031,
    "msg_date_time": "2013-10-12T05:19:00.000Z",
    "created_at": "2018-10-20T15:38:54.884Z",
    "updated_at": "2018-10-20T15:38:54.884Z",
    "location": "POINT (-83.5901184082031 41.6533470153809)"
}
```


```swift
let url = "https://alertizen.herokuapp.com/auth/login"

let headers: HTTPHeaders = [
  "Accept": "application/json"
]

let payload: [String: Any] = [
  "username": "ricky@xyz.com",
  "password": "allowme"
]

Alamofire.request(url, method: .post, parameters: payload, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
  print(response)
}

```

This endpoint create a Alert.

### HTTP Request

`POST https://alertsizen.herokuapp.com/api/alerts`

### Request Payload

Parameter | Required | Description
--------- | ------- | -----------
msg_id | Required | Message ID of the Alert
title | Required | Title or Subject of the Alert
body | Required | Body of the Alert
msg_type | Required | Message Type of the Alert
address | Required | Address of the Alert
lat | Required | Latitude of the Alert
lng | Required | Longitude of the Alert
msg_date_time | Required | Date and Time of the Alert




