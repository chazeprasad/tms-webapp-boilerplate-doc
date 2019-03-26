# Sectors

## Get All Sectors

```javascript
const http = require('http');

const headers = []
headers.push({ Accept: "application/vnd.sample+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const url = "https://sample.herokuapp.com/api/sectors"
http.get(url);
```

```swift
let url = URL(string: "https://alertsizen.herokuapp.com/api/sectors")
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
curl https://sample.herokuapp.com/api/sectors
  -H "Accept: application/vnd.sample+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X GET
```

> The above command returns JSON structured like this:

```json
[
    {
        "id": 1,
        "sector_name": "Sector 1",
        "area_type": "sector",
        "vertices": "POLYGON ((40.7566484549725 -73.9878561496734, 40.7556894646734 -73.9853026866913, 40.7545841705587 -73.9860537052154, 40.7548036054111 -73.9881458282471, 40.7559820394514 -73.9887895584106, 40.7566484549725 -73.9878561496734))",
        "created_at": "2018-10-20T15:01:22.505Z",
        "updated_at": "2018-10-20T15:01:22.505Z"
    },
    {
        "id": 2,
        "sector_name": "Sector 2",
        "area_type": "sector",
        "vertices": "POLYGON ((40.7566484549725 -73.9878561496734, 40.7556894646734 -73.9853026866913, 40.7545841705587 -73.9860537052154, 40.7548036054111 -73.9881458282471, 40.7559820394514 -73.9887895584106, 40.7566484549725 -73.9878561496734))",
        "created_at": "2018-10-20T15:01:22.505Z",
        "updated_at": "2018-10-20T15:01:22.505Z"
    },
    {
        "id": 3,
        "sector_name": "Sector 3",
        "area_type": "sector",
        "vertices": "POLYGON ((40.7566484549725 -73.9878561496734, 40.7556894646734 -73.9853026866913, 40.7545841705587 -73.9860537052154, 40.7548036054111 -73.9881458282471, 40.7559820394514 -73.9887895584106, 40.7566484549725 -73.9878561496734))",
        "created_at": "2018-10-20T15:01:22.505Z",
        "updated_at": "2018-10-20T15:01:22.505Z"
    }
]
```

This endpoint retrieves all Sectors.

### HTTP Request

`GET https://sample.herokuapp.com/api/sectors`

