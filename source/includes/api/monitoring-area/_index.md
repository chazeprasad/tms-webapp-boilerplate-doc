# Monitoring Area

## Get All Monitoring Areas

```javascript
const http = require('http');

const headers = []
headers.push({ Accept: "application/vnd.alertizen+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const url = "https://alertizen.herokuapp.com/api/monitoring-areas"
http.get(url);
```


```swift
let url = URL(string: "https://alertsizen.herokuapp.com/api/monitoring-areas")
var urlRequest = URLRequest(url: url)
urlRequest.httpMethod = HTTPMethod.get.rawValue

var headers: HTTPHeaders = HTTPHeaders()
headers["Accept"] = "application/vnd.alertizen+json;version=1;"
headers["Authorization"] = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
urlRequest.allHTTPHeaderFields = headers

let request = Alamofire.request(urlRequest).responseJSON { response in
      print(response)
}
```


```shell
curl https://alertizen.herokuapp.com/api/monitoring-areas
  -H "Accept: application/vnd.alertizen+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X GET
```

> The above command returns JSON structured like this:

```json
[
    {
        "id": 2,
        "address": "350 Batavia St, Toledo, OH 43620, USA",
        "lat": 41.6528,
        "lng": -83.541939,
        "owner": "1",
        "created_at": "2018-10-19T08:43:26.412Z",
        "updated_at": "2018-10-19T08:43:26.412Z",
        "location": "POINT (-83.541939 41.6528)",
        "is_active": false,
        "radius": 0.5
    },
    {
        "id": 3,
        "address": "350 Batavia St, Toledo, OH 43620, USA",
        "lat": 41.6528,
        "lng": -83.541939,
        "owner": "1",
        "created_at": "2018-10-19T08:43:26.415Z",
        "updated_at": "2018-10-19T08:43:26.415Z",
        "location": "POINT (-83.541939 41.6528)",
        "is_active": false,
        "radius": 0.5
    },
    {
        "id": 1,
        "address": "350 Batavia St, Toledo, OH 43620, USA",
        "lat": 41.6528,
        "lng": -83.541939,
        "owner": "1",
        "created_at": "2018-10-19T08:43:26.370Z",
        "updated_at": "2018-10-19T09:22:38.097Z",
        "location": null,
        "is_active": true,
        "radius": 0.5
    }
]
```

This endpoint retrieves all Monitoring Areas.

### HTTP Request

`GET https://alertizen.herokuapp.com/api/monitoring-areas`

