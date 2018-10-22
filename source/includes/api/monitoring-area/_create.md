## Create a Monitoring Area

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.alertizen+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const payload = {
  is_active: true
  address: "1314 WAVERLY AV, Toledo, OH", 
  lat: 41.6533470153809, 
  lng: -83.5901184082031, 
  owner: 1
}

const url = "https://alertizen.herokuapp.com/api/monitoring-areas"
http.post(url, payload);
```


```swift
let url = "https://alertsizen.herokuapp.com/api/monitoring-areas"

let headers: HTTPHeaders = [
  "Accept": "application/vnd.alertizen+json;version=1;"
  "Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
]

let payload: [String: Any] = [
  "is_active": true
  "address": "1314 WAVERLY AV, Toledo, OH", 
  "lat": 41.6533470153809, 
  "lng": -83.5901184082031, 
  "owner": 1
]

Alamofire.request(url, method: .post, parameters: payload, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
  print(response)
}
```


```shell
curl https://alertizen.herokuapp.com/api/monitoring-areas
  -H "Accept: application/vnd.alertizen+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X POST
  --data '{ "is_active": true "address": "1314 WAVERLY AV, Toledo, OH", "lat": 41.6533470153809, "lng": -83.5901184082031, "owner": 1 }'
```


> The above command returns JSON structured like this:

```json
{
    "id": 5,
    "address": "1314 WAVERLY AV, Toledo, OH",
    "lat": 41.6533470153809,
    "lng": -83.5901184082031,
    "owner": "1",
    "created_at": "2018-10-19T11:55:09.935Z",
    "updated_at": "2018-10-19T11:55:09.935Z",
    "location": "POINT (-83.5901184082031 41.6533470153809)",
    "is_active": true,
    "radius": 0.5
}
```

This endpoint create a Monitoring Area.

### HTTP Request

`POST https://alertizen.herokuapp.com/api/monitoring-areas`

### Request Payload

Parameter | Required | Description
--------- | ------- | -----------
is_active | Optional | By default true
address | Required | Address of the Monitoring Area.
lat | Required | Latitude of the Monitoring Area.
lng | Required | Longitude of the Monitoring Area.
owner | Required | ID of the User.



