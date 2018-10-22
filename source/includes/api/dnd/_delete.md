## Delete a Specific Do Not Disturb Settings

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.alertizen+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const url = "https://alertizen.herokuapp.com/api/dnds/1"
http.delete(url);
```

```swift
let url = URL(string: "https://alertsizen.herokuapp.com/api/dnds/1")
var urlRequest = URLRequest(url: url)
urlRequest.httpMethod = HTTPMethod.delete.rawValue

var headers: HTTPHeaders = HTTPHeaders()
headers["Accept"] = "application/vnd.alertizen+json;version=1;"
headers["Authorization"] = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
urlRequest.allHTTPHeaderFields = headers

let request = Alamofire.request(urlRequest).responseJSON { response in
      print(response)
}
```


```shell
curl https://alertizen.herokuapp.com/api/dnds/1
  -H "Accept: application/vnd.alertizen+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X DELETE
```


> The above command returns JSON structured like this:

```json
{

}
```

This endpoint retrieves a specific Do Not Disturb Settings.

### HTTP Request

`DELETE https://alertizen.herokuapp.com/api/dnds/<ID>`

### URL Parameters

Parameter | Required | Description
--------- | ------- | -----------
ID | Required | The ID of the Do Not Disturb Settings to find.

