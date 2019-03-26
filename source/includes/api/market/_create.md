## Create a Market

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.sample+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const payload = {
  market_name: "market-1"
  vertices: "POLYGON((40.7566484549725 -73.9878561496734, 40.7556894646734 -73.9853026866913, 40.7545841705587 -73.9860537052154, 40.7548036054111 -73.9881458282471, 40.7559820394514 -73.9887895584106, 40.7566484549725 -73.9878561496734))"
}

const url = "https://sample.herokuapp.com/api/markets"
http.post(url, payload);
```

```swift
let url = "https://alertsizen.herokuapp.com/api/markets"

let headers: HTTPHeaders = [
  "Accept": "application/vnd.sample+json;version=1;"
  "Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
]

let payload: [String: Any] = [
  "market_name": "market-1"
  "vertices": "POLYGON((40.7566484549725 -73.9878561496734, 40.7556894646734 -73.9853026866913, 40.7545841705587 -73.9860537052154, 40.7548036054111 -73.9881458282471, 40.7559820394514 -73.9887895584106, 40.7566484549725 -73.9878561496734))"
]

Alamofire.request(url, method: .post, parameters: payload, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
  print(response)
}
```


```shell
curl https://sample.herokuapp.com/api/markets
  -H "Accept: application/vnd.sample+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X POST
  --data '{ "market_name": "market-1" "vertices": "POLYGON((40.7566484549725 -73.9878561496734, 40.7556894646734 -73.9853026866913, 40.7545841705587 -73.9860537052154, 40.7548036054111 -73.9881458282471, 40.7559820394514 -73.9887895584106, 40.7566484549725 -73.9878561496734))" }'
```

> The above command returns JSON structured like this:

```json
{
    "id": 3,
    "market_name": "market 1",
    "area_type": "market",
    "vertices": "POLYGON ((40.7566484549725 -73.9878561496734, 40.7556894646734 -73.9853026866913, 40.7545841705587 -73.9860537052154, 40.7548036054111 -73.9881458282471, 40.7559820394514 -73.9887895584106, 40.7566484549725 -73.9878561496734))",
    "created_at": "2018-10-20T15:01:22.505Z",
    "updated_at": "2018-10-20T15:01:22.505Z"
}
```

This endpoint create a markets.

### HTTP Request

`POST https://sample.herokuapp.com/api/markets`

### Request Payload

Parameter | Required | Description
--------- | ------- | -----------
market_name | Required | Name of the market
vertices | Required | Coordinates of the markets



