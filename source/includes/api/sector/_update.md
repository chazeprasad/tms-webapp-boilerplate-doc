## Update a Specific Sectors

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.alertizen+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const payload = {
  sector_name: "Sector-1234
}

const url = "https://alertizen.herokuapp.com/api/sectors/1"
http.put(url, payload);
```

```swift
let url = "https://alertsizen.herokuapp.com/api/sectors"

let headers: HTTPHeaders = [
  "Accept": "application/vnd.alertizen+json;version=1;"
  "Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
]

let payload: [String: Any] = [
  "sector_name": "Sector-1234"
]

Alamofire.request(url, method: .put, parameters: payload, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
  print(response)
}
```


```shell
curl https://alertizen.herokuapp.com/api/sectors/1
  -H "Accept: application/vnd.alertizen+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X PUT
  --data '{ "sector_name": "Sector-1234" }'
```


> The above command returns JSON structured like this:

```json
{
    
}
```

This endpoint retrieves a specific Sectors.

### HTTP Request

`PUT https://alertizen.herokuapp.com/api/sectors/<ID>`

### Request Payload

Parameter | Required | Description
--------- | ------- | -----------
sector_name | Optional | Name of the Sector
vertices | Optional | Coordinates of the Sectors



### URL Parameters

Parameter | Required | Description
--------- | ------- | -----------
ID | Required | The ID of the Sectors to find.

