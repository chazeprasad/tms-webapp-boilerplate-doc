## Get a Specific Monitoring Area

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.alertizen+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const url = "https://alertizen.herokuapp.com/api/monitoring-areas/1"
http.get(url);
```



```swift
let url = URL(string: "https://alertsizen.herokuapp.com/api/monitoring-areas/1")
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
curl https://alertizen.herokuapp.com/api/monitoring-areas/1
  -H "Accept: application/vnd.alertizen+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X GET
```


> The above command returns JSON structured like this:

```json
{
    "id": 1,
    "address": "350 Batavia St, Toledo, OH 43620, USA",
    "lat": 41.6528,
    "lng": -83.541939,
    "owner": "1",
    "created_at": "2018-10-19T08:43:26.412Z",
    "updated_at": "2018-10-19T08:43:26.412Z",
    "location": "POINT (-83.541939 41.6528)",
    "is_active": false,
    "radius": 0.5
}
```

This endpoint retrieves a specific Monitoring Area.

### HTTP Request

`GET https://alertizen.herokuapp.com/api/monitoring-areas/<ID>`

### URL Parameters

Parameter | Required | Description
--------- | ------- | -----------
ID | Required | The ID of the Monitoring Area to find.

