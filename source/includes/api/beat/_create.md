## Create a Beats

```javascript
const http = require('http');

const headers = [] 
headers.push({ Accept: "application/vnd.alertizen+json;version=1;" } ); 
headers.push({ Authorization: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" } ); 

const payload = {
  beat_name: "beat-1"
  vertices: "POLYGON((40.7566484549725 -73.9878561496734, 40.7556894646734 -73.9853026866913, 40.7545841705587 -73.9860537052154, 40.7548036054111 -73.9881458282471, 40.7559820394514 -73.9887895584106, 40.7566484549725 -73.9878561496734))"
}

const url = "https://alertizen.herokuapp.com/api/Beats"
http.post(url, payload);
```


```swift
let url = "https://alertsizen.herokuapp.com/api/beats"

let headers: HTTPHeaders = [
  "Accept": "application/vnd.alertizen+json;version=1;"
  "Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
]

let payload: [String: Any] = [
  "beat_name": "beat-1"
  "vertices": "POLYGON((40.7566484549725 -73.9878561496734, 40.7556894646734 -73.9853026866913, 40.7545841705587 -73.9860537052154, 40.7548036054111 -73.9881458282471, 40.7559820394514 -73.9887895584106, 40.7566484549725 -73.9878561496734))"
]

Alamofire.request(url, method: .post, parameters: payload, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
  print(response)
}
```

```shell
curl https://alertizen.herokuapp.com/api/beats
  -H "Accept: application/vnd.alertizen+json;version=1;"
  -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
  -X POST
  --data '{ "beat_name": "beat-1" "vertices": "POLYGON((40.7566484549725 -73.9878561496734, 40.7556894646734 -73.9853026866913, 40.7545841705587 -73.9860537052154, 40.7548036054111 -73.9881458282471, 40.7559820394514 -73.9887895584106, 40.7566484549725 -73.9878561496734))" }'
```

> The above command returns JSON structured like this:

```json
{
    "id": 3,
    "beat_name": "beat 1",
    "area_type": "beat",
    "vertices": "POLYGON ((40.7566484549725 -73.9878561496734, 40.7556894646734 -73.9853026866913, 40.7545841705587 -73.9860537052154, 40.7548036054111 -73.9881458282471, 40.7559820394514 -73.9887895584106, 40.7566484549725 -73.9878561496734))",
    "created_at": "2018-10-20T15:01:22.505Z",
    "updated_at": "2018-10-20T15:01:22.505Z"
}
```

This endpoint create a Beats.

### HTTP Request

`POST https://alertizen.herokuapp.com/api/Beats`

### Request Payload

Parameter | Required | Description
--------- | ------- | -----------
beat_name | Required | Name of the beat
vertices | Required | Coordinates of the Beats



