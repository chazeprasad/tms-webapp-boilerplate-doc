## Delete a Specific Market

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.sample+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const url = "https://sample.herokuapp.com/api/markets/1"
http.delete(url);
```


```swift
let url = URL(string: "https://alertsizen.herokuapp.com/api/markets/1")
var urlRequest = URLRequest(url: url)
urlRequest.httpMethod = HTTPMethod.delete.rawValue

var headers: HTTPHeaders = HTTPHeaders()
headers["Accept"] = "application/vnd.sample+json;version=1;"
headers["Authorization"] = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
urlRequest.allHTTPHeaderFields = headers

let request = Alamofire.request(urlRequest).responseJSON { response in
      print(response)
}
```


```shell
curl https://sample.herokuapp.com/api/markets/1
  -H "Accept: application/vnd.sample+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X DELETE
```


> The above command returns JSON structured like this:

```json
{

}
```

This endpoint retrieves a specific markets.

### HTTP Request

`DELETE https://sample.herokuapp.com/api/markets/<ID>`

### URL Parameters

Parameter | Required | Description
--------- | ------- | -----------
ID | Required | The ID of the markets to find.

