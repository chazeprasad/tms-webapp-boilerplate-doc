## Get a Specific Email Alerts Settings

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.sample+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const url = "https://sample.herokuapp.com/api/email-alerts/1"
http.get(url);
```

```swift
let url = URL(string: "https://alertsizen.herokuapp.com/api/email-alerts/1")
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
curl https://sample.herokuapp.com/api/email-alerts/1
  -H "Accept: application/vnd.sample+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X GET
```

> The above command returns JSON structured like this:

```json
{
    "id": 1,
    "is_active": true,
    "email_id": "ricky@xyc.com",
    "owner": "1",
    "created_at": "2018-10-20T13:56:52.803Z",
    "updated_at": "2018-10-20T13:56:52.803Z"
}
```

This endpoint retrieves a specific Email Alerts Settings.

### HTTP Request

`GET https://sample.herokuapp.com/api/email-alerts/<ID>`

### URL Parameters

Parameter | Required | Description
--------- | ------- | -----------
ID | Required | The ID of the Email Alerts Settings to find.

