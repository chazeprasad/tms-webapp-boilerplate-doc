## Update a Specific Market

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.sample+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const payload = {
  market_name: "Market-1234"
}

const url = "https://sample.herokuapp.com/api/markets/1"
http.put(url, payload);
```

```swift
let url = "https://alertsizen.herokuapp.com/api/markets/1"

let headers: HTTPHeaders = [
  "Accept": "application/vnd.sample+json;version=1;"
  "Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
]

let payload: [String: Any] = [
  "market_name": "Market-1234"
]

Alamofire.request(url, method: .put, parameters: payload, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
  print(response)
}
```


```shell
curl https://sample.herokuapp.com/api/markets/1
  -H "Accept: application/vnd.sample+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X PUT
  --data '{ "market_name": "Market-1234" }'
```


> The above command returns JSON structured like this:

```json
{
    
}
```

This endpoint retrieves a specific markets.

### HTTP Request

`PUT https://sample.herokuapp.com/api/markets/<ID>`

### Request Payload

Parameter | Required | Description
--------- | ------- | -----------
market_name | Optional | Name of the market
vertices | Optional | Coordinates of the markets



### URL Parameters

Parameter | Required | Description
--------- | ------- | -----------
ID | Required | The ID of the markets to find.

