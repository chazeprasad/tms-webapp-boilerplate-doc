# Do Not Disturb Settings

## Get All Do Not Disturb Settings

```javascript
const http = require('http');

const headers = []
headers.push({ Accept: "application/vnd.alertizen+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const url = "https://alertizen.herokuapp.com/api/dnds"
http.get(url);
```


```swift
let url = URL(string: "https://alertsizen.herokuapp.com/api/dnds")
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
curl https://alertizen.herokuapp.com/api/dnds
  -H "Accept: application/vnd.alertizen+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X GET
```

> The above command returns JSON structured like this:

```json
[
    {
        "id": 1,
        "manual": false,
        "scheduled": false,
        "from": "2000-01-01T22:30:00.000Z",
        "to": "2000-01-01T08:00:00.000Z",
        "owner": "1",
        "created_at": "2018-10-20T15:28:20.564Z",
        "updated_at": "2018-10-20T15:28:20.564Z"
    },
    {
        "id": 2,
        "manual": false,
        "scheduled": false,
        "from": "2000-01-01T22:30:00.000Z",
        "to": "2000-01-01T08:00:00.000Z",
        "owner": "1",
        "created_at": "2018-10-20T15:28:20.564Z",
        "updated_at": "2018-10-20T15:28:20.564Z"
    },
    {
        "id": 3,
        "manual": false,
        "scheduled": false,
        "from": "2000-01-01T22:30:00.000Z",
        "to": "2000-01-01T08:00:00.000Z",
        "owner": "1",
        "created_at": "2018-10-20T15:28:20.564Z",
        "updated_at": "2018-10-20T15:28:20.564Z"
    }
]
```

This endpoint retrieves all Do Not Disturb Settings.

### HTTP Request

`GET https://alertizen.herokuapp.com/api/dnds`

