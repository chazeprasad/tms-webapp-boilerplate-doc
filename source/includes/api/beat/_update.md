## Update a Specific Beats

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.alertizen+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const payload = {
  beat_name: "Beat-1234"
}

const url = "https://alertizen.herokuapp.com/api/Beats/1"
http.put(url, payload);
```


```swift
let url = "https://alertsizen.herokuapp.com/api/beats/1"

let headers: HTTPHeaders = [
  "Accept": "application/vnd.alertizen+json;version=1;"
  "Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
]

let payload: [String: Any] = [
  "beat_name": "Beat-1234"
]

Alamofire.request(url, method: .put, parameters: payload, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
  print(response)
}
```

```shell
curl https://alertizen.herokuapp.com/api/beats/1
  -H "Accept: application/vnd.alertizen+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X PUT
  --data '{ "beat_name": "Beat-1234" }'
```

> The above command returns JSON structured like this:

```json
{
    
}
```

This endpoint retrieves a specific Beats.

### HTTP Request

`PUT https://alertizen.herokuapp.com/api/Beats/<ID>`

### Request Payload

Parameter | Required | Description
--------- | ------- | -----------
beat_name | Optional | Name of the beat
vertices | Optional | Coordinates of the Beats



### URL Parameters

Parameter | Required | Description
--------- | ------- | -----------
ID | Required | The ID of the Beats to find.

