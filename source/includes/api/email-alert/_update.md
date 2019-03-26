## Update a Specific Email Alert Settings

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.sample+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const payload = {
  is_active: false
}

const url = "https://sample.herokuapp.com/api/email-alerts/1"
http.put(url, payload);
```

```swift
let url = "https://alertsizen.herokuapp.com/api/email-alerts/1"

let headers: HTTPHeaders = [
  "Accept": "application/vnd.sample+json;version=1;"
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
curl https://sample.herokuapp.com/api/email-alerts/1
  -H "Accept: application/vnd.sample+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X PUT
  --data '{ "is_active": false }'
```


> The above command returns JSON structured like this:

```json
{
    
}
```

This endpoint retrieves a specific Email Alert Settings.

### HTTP Request

`PUT https://sample.herokuapp.com/api/email-alerts/<ID>`

### Request Payload

Parameter | Required | Description
--------- | ------- | -----------
is_active | Optional | By default true
email_id | Optional | Email ID of the Email Alert Settings.



### URL Parameters

Parameter | Required | Description
--------- | ------- | -----------
ID | Required | The ID of the Email Alert Settings to find.

