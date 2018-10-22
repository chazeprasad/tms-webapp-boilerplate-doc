## Update a Specific Do Not Disturb Settings

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.alertizen+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const payload = {
  manual: false
}

const url = "https://alertizen.herokuapp.com/api/dnds/1"
http.put(url, payload);
```


```swift
let url = "https://alertsizen.herokuapp.com/api/dnds/1"

let headers: HTTPHeaders = [
  "Accept": "application/vnd.alertizen+json;version=1;"
  "Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
]

let payload: [String: Any] = [
  "manual": false
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
  --data '{ "manual": false }'
```


> The above command returns JSON structured like this:

```json
{
    
}
```

This endpoint retrieves a specific Do Not Disturb Settings.

### HTTP Request

`PUT https://alertizen.herokuapp.com/api/dnds/<ID>`

### Request Payload

Parameter | Required | Description
--------- | ------- | -----------
manual | Optional | By default false
scheduled | Optional | By default false
from | Optional | Start Time of the Do Not Disturb Settings.
to | Optional | Stop Time of the Do Not Disturb Settings.



### URL Parameters

Parameter | Required | Description
--------- | ------- | -----------
ID | Required | The ID of the Do Not Disturb Settings to find.

