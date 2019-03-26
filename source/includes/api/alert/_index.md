# Alerts

## Get All Alerts

```javascript
const http = require('http');

const headers = []
headers.push({ Accept: "application/vnd.sample+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const url = "https://alertsizen.herokuapp.com/api/alerts"
http.get(url);
```

```swift
let url = URL(string: "https://alertsizen.herokuapp.com/api/alerts")
var urlRequest = URLRequest(url: url)
urlRequest.httpMethod = HTTPMethod.get.rawValue

var headers: HTTPHeaders = HTTPHeaders()
headers["Accept"] = "application/vnd.sample+json;version=1;"
headers["Authorization"] = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
urlRequest.allHTTPHeaderFields = headers

let request = Alamofire.request(urlRequest).responseJSON { response in
      print(response)
}
```

```shell
curl https://sample.herokuapp.com/api/alerts
  -H "Accept: application/vnd.sample+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X GET
```

> The above command returns JSON structured like this:

```json
[
    {
        "id": 1,
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
    },
    {
        "id": 2,
        "msg_id": "2222",
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
    },
    {
        "id": 3,
        "msg_id": "3333",
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
]
```

This endpoint retrieves all Alert.

### HTTP Request

`GET https://alertsizen.herokuapp.com/api/alerts`

