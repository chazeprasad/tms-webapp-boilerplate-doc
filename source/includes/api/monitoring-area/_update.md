## Update a Specific Monitoring Area

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.alertizen+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const payload = {
  is_active: false
}

const url = "https://alertizen.herokuapp.com/api/monitoring-areas/1"
http.put(url, payload);
```


```swift
let url = "https://alertsizen.herokuapp.com/api/monitoring-areas/1"

let headers: HTTPHeaders = [
  "Accept": "application/vnd.alertizen+json;version=1;"
  "Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
]

let payload: [String: Any] = [
  "is_active": false
]

Alamofire.request(url, method: .put, parameters: payload, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
  print(response)
}
```

```shell
curl https://alertizen.herokuapp.com/api/monitoring-areas/1
  -H "Accept: application/vnd.alertizen+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X PUT
  --data '{ "is_active": false }'
```


> The above command returns JSON structured like this:

```json
{
    
}
```

This endpoint retrieves a specific Monitoring Area.

### HTTP Request

`PUT https://alertizen.herokuapp.com/api/monitoring-areas/<ID>`

### Request Payload

Parameter | Required | Description
--------- | ------- | -----------
is_active | Optional | By default true
address | Optional | Address of the Monitoring Area.
lat | Optional | Latitude of the Monitoring Area.
lng | Optional | Longitude of the Monitoring Area.



### URL Parameters

Parameter | Required | Description
--------- | ------- | -----------
ID | Required | The ID of the Monitoring Area to find.

