## Get a Specific Do Not Disturb Settings

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.sample+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const url = "https://sample.herokuapp.com/api/dnds/1"
http.get(url);
```


```swift
let url = URL(string: "https://alertsizen.herokuapp.com/api/dnds/1")
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
curl https://sample.herokuapp.com/api/dnds/1
  -H "Accept: application/vnd.sample+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X GET
```


> The above command returns JSON structured like this:

```json
{
    "id": 1,
    "manual": false,
    "scheduled": false,
    "from": "2000-01-01T22:30:00.000Z",
    "to": "2000-01-01T08:00:00.000Z",
    "owner": "1",
    "created_at": "2018-10-20T15:28:20.564Z",
    "updated_at": "2018-10-20T15:28:20.564Z"
}
```

This endpoint retrieves a specific Do Not Disturb Settings.

### HTTP Request

`GET https://sample.herokuapp.com/api/dnds/<ID>`

### URL Parameters

Parameter | Required | Description
--------- | ------- | -----------
ID | Required | The ID of the Do Not Disturb Settings to find.

