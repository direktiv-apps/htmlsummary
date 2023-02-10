
# htmlsummary 1.0

Generate summaries of HTML pages

---
- #### Categories: docs, misc
- #### Image: gcr.io/direktiv/functions/htmlsummary 
- #### License: [Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0)
- #### Issue Tracking: https://github.com/direktiv-apps/htmlsummary/issues
- #### URL: https://github.com/direktiv-apps/htmlsummary
- #### Maintainer: [direktiv.io](https://www.direktiv.io) 
---

## About htmlsummary

This function uses [trafilature](https://trafilatura.readthedocs.io/en/latest/) to create a summary from an URL or file provided from Direktiv.

### Example(s)
  #### Function Configuration
```yaml
functions:
- id: htmlsummary
  image: gcr.io/direktiv/functions/htmlsummary:1.0
  type: knative-workflow
```
   #### Basic
```yaml
- id: htmlsummary
  type: action
  action:
    function: htmlsummary
    input: 
      url: https://www.direktiv.io
```
   #### With File
```yaml
- id: htmlsummary
  type: action
  action:
    function: htmlsummary
    input: 
      files:
      - name: hello.html
        data: Hello World
      file: hello.html
```

   ### Secrets


*No secrets required*







### Request



#### Request Attributes
[PostParamsBody](#post-params-body)

### Response
  List of executed commands.
#### Example Reponses
    
```json
{
  "author": null,
  "categories": "",
  "comments": "",
  "date": "2022-01-01",
  "excerpt": null,
  "fingerprint": "yO3kBTVD6Q6adzLqiXlbjeHmXW4=",
  "hostname": "direktiv.io",
  "id": null,
  "language": null,
  "license": null,
  "raw_text": "Trusted by highly productive enterprises",
  "source": "https://www.direktiv.io/",
  "source-hostname": "direktiv.io",
  "tags": "",
  "text": "Trusted by highly productive enterprises",
  "title": "Direktiv: Scaling the enterprise via event-driven orchestration"
}
```

### Errors
| Type | Description
|------|---------|
| io.direktiv.command.error | Command execution failed |
| io.direktiv.output.error | Template error for output generation of the service |
| io.direktiv.ri.error | Can not create information object from request |


### Types
#### <span id="post-params-body"></span> postParamsBody

  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| file | string| `string` |  | | File to generate summary |  |
| files | [][DirektivFile](#direktiv-file)| `[]apps.DirektivFile` |  | | File to create before running commands. |  |
| url | string| `string` |  | | URL to generate summary |  |

 
