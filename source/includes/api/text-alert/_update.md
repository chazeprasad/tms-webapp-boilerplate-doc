## Update a Specific Text Alert Settings

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.alertizen+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const payload = {
  is_active: false
}

const url = "https://alertizen.herokuapp.com/api/text-alerts/1"
http.put(url, payload);
```


```swift
let url = "https://alertsizen.herokuapp.com/api/text-alerts/1"

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
curl https://alertizen.herokuapp.com/api/text-alerts/1
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

This endpoint retrieves a specific Text Alert Settings.

### HTTP Request

`PUT https://alertizen.herokuapp.com/api/text-alerts/<ID>`

### Request Payload

Parameter | Required | Description
--------- | ------- | -----------
is_active | Optional | By default true
phone_no | Optional | Phone Number of the Text Alert Settings.
phone_company | Optional | Phone Company of the Text Alert Settings.



### URL Parameters

Parameter | Required | Description
--------- | ------- | -----------
ID | Required | The ID of the Text Alert Settings to find.

