# Mobile Alert Settings

## Get All Mobile Alert Settings

```javascript
const http = require('http');

const headers = []
headers.push({ Accept: "application/vnd.sample+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const url = "https://sample.herokuapp.com/api/mobile-alerts"
http.get(url);
```


```swift
let url = URL(string: "https://alertsizen.herokuapp.com/api/mobile-alerts")
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
curl https://sample.herokuapp.com/api/mobile-alerts
  -H "Accept: application/vnd.sample+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X GET
```


> The above command returns JSON structured like this:

```json
[
    {
        "id": 1,
        "is_active": true,
        "device_token": "11112222333344441111222233334444",
        "os_name": "iOS",
        "os_version": "11.1",
        "owner": "1",
        "created_at": "2018-10-20T14:27:37.891Z",
        "updated_at": "2018-10-20T14:27:37.891Z"
    },
    {
        "id": 2,
        "device_token": "12341234123412341234123412341234",
        "os_name": "iOS",
        "os_version": "11.1",
        "owner": "2",
        "created_at": "2018-10-20T14:27:37.891Z",
        "updated_at": "2018-10-20T14:27:37.891Z"
    },
    {
        "id": 3,
        "is_active": true,
        "device_token": "44442222333344441111222233334444",
        "os_name": "iOS",
        "os_version": "11.1",
        "owner": "3",
        "created_at": "2018-10-20T14:27:37.891Z",
        "updated_at": "2018-10-20T14:27:37.891Z"
    }
]
```

This endpoint retrieves all Mobile Alert Settings.

### HTTP Request

`GET https://sample.herokuapp.com/api/mobile-alerts`

