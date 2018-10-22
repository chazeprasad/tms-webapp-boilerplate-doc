# Email Alert Settings

## Get All Email Alert Settings

```javascript
const http = require('http');

const headers = []
headers.push({ Accept: "application/vnd.alertizen+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const url = "https://alertizen.herokuapp.com/api/email-alerts"
http.get(url);
```

```swift
let url = URL(string: "https://alertsizen.herokuapp.com/api/email-alerts")
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
curl https://alertizen.herokuapp.com/api/email-alerts
  -H "Accept: application/vnd.alertizen+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X GET
```

> The above command returns JSON structured like this:

```json
[
    {
        "id": 1,
        "is_active": true,
        "email_id": "ricky@xyc.com",
        "owner": "1",
        "created_at": "2018-10-20T13:56:52.803Z",
        "updated_at": "2018-10-20T13:56:52.803Z"
    },
    {
        "id": 2,
        "is_active": true,
        "email_id": "harry@xyc.com",
        "owner": "2",
        "created_at": "2018-10-20T13:56:52.803Z",
        "updated_at": "2018-10-20T13:56:52.803Z"
    },
    {
        "id": 3,
        "is_active": true,
        "email_id": "morris@xyc.com",
        "owner": "3",
        "created_at": "2018-10-20T13:56:52.803Z",
        "updated_at": "2018-10-20T13:56:52.803Z"
    }
]
```

This endpoint retrieves all Email Alert Settings.

### HTTP Request

`GET https://alertizen.herokuapp.com/api/email-alerts`

