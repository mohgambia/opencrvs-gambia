# QUESTIONS


1. I tried to upload the attached files to the OpenCRVS. It seems all the structure has been created, but really I can't login in the system. I don't know what is the generated password. And then, after "setting" a password directly in MongoDB, I've got this error with LOCAL_REGISTRAR `felix.katongo`:

```json
{"errors":[{"message":"FHIR request failed: invalid json response body at http://localhost:5001/fhir/Location/fcce021e-33c4-47c0-b9af-0774387dcc83 reason: Unexpected end of JSON input","locations":[{"line":15,"column":5}],"path":["getUser","catchmentArea"],"extensions":{"code":"INTERNAL_SERVER_ERROR","exception":{"stacktrace":["Error: FHIR request failed: invalid json response body at http://localhost:5001/fhir/Location/fcce021e-33c4-47c0-b9af-0774387dcc83 reason: Unexpected end of JSON input","    at /home/afoone/desarrollo/gambia/ok/opencrvs-core/packages/gateway/src/features/fhir/utils.ts:846:29","    at processTicksAndRejections (internal/process/task_queues.js:93:5)","    at async Promise.all (index 1)"]}}},{"message":"FHIR request failed: invalid json response body at http://localhost:5001/fhir/PractitionerRole?location=8dd2d6a8-db02-449c-af46-b4e04561f12a&role=LOCAL_REGISTRAR reason: Unexpected end of JSON input","locations":[{"line":34,"column":5}],"path":["getUser","localRegistrar"],"extensions":{"code":"INTERNAL_SERVER_ERROR","exception":{"stacktrace":["Error: FHIR request failed: invalid json response body at http://localhost:5001/fhir/PractitionerRole?location=8dd2d6a8-db02-449c-af46-b4e04561f12a&role=LOCAL_REGISTRAR reason: Unexpected end of JSON input","    at /home/afoone/desarrollo/gambia/ok/opencrvs-core/packages/gateway/src/features/fhir/utils.ts:846:29","    at processTicksAndRejections (internal/process/task_queues.js:93:5)"]}}}],"data":{"getUser":null}}

```
This is my `felix.katongo` user:
```json
{
    "_id" : ObjectId("6041eb12e05a9531c699c766"),
    "catchmentAreaIds" : [ 
        "23e6df84-ae7c-437d-ad0f-086d5619aae2", 
        "fcce021e-33c4-47c0-b9af-0774387dcc83"
    ],
    "scope" : [ 
        "validate", 
        "certify", 
        "demo"
    ],
    "status" : "active",
    "name" : [ 
        {
            "given" : [ 
                "Felix"
            ],
            "use" : "en",
            "family" : "Katongo"
        }
    ],
    "username" : "felix.katongo",
    "email" : "test@test.org",
    "mobile" : "+220922222222",
    "passwordHash" : "627933e804806bae4377df190a878540e1f4d393f4da6359b71bf3917b71fea8a815f9acf077f95d6e3b809f5fcdac320cd1270b27efbfa9aed8453162ac407c",
    "salt" : "63685106-3cde-4b8a-ad13-fb94085bba4e",
    "role" : "REGISTRATION_AGENT",
    "type" : "ENTREPENEUR",
    "practitionerId" : "c3bd4267-b413-4c11-b2a6-4993a6f173b3",
    "primaryOfficeId" : "8dd2d6a8-db02-449c-af46-b4e04561f12a",
    "securityQuestionAnswers" : [],
    "identifiers" : [],
    "creationDate" : 1614932754053.0,
    "auditHistory" : []
}
```

and this is my location:

```json
{
    "_id" : ObjectId("6041eb0e554d46001d386cf9"),
    "resourceType" : "Location",
    "identifier" : [ 
        {
            "system" : "http://opencrvs.org/specs/id/statistical-code",
            "value" : "ADMIN_STRUCTURE_hywxVKv48Xp"
        }, 
        {
            "system" : "http://opencrvs.org/specs/id/jurisdiction-type",
            "value" : "DISTRICT"
        }
    ],
    "name" : "Banjul City",
    "alias" : [ 
        "Banjul City"
    ],
    "description" : "hywxVKv48Xp",
    "status" : "active",
    "mode" : "instance",
    "partOf" : {
        "reference" : "Location/fcce021e-33c4-47c0-b9af-0774387dcc83"
    },
    "type" : {
        "coding" : [ 
            {
                "system" : "http://opencrvs.org/specs/location-type",
                "code" : "ADMIN_STRUCTURE"
            }
        ]
    },
    "physicalType" : {
        "coding" : [ 
            {
                "code" : "jdn",
                "display" : "Jurisdiction"
            }
        ]
    },
    "extension" : [ 
        {
            "url" : "http://hl7.org/fhir/StructureDefinition/location-boundary-geojson",
            "valueAttachment" : {
                "contentType" : "application/geo+json",
                "data" : "<base64>"
            }
        }
    ],
    "meta" : {
        "lastUpdated" : "2021-03-05T08:25:50.856+00:00",
        "versionId" : "bd820006-4c28-4ba8-9846-7582598d8eac"
    },
    "_transforms" : {
        "meta" : {
            "lastUpdated" : ISODate("2021-03-05T08:25:50.856Z")
        }
    },
    "_request" : {
        "method" : "POST"
    },
    "id" : "23e6df84-ae7c-437d-ad0f-086d5619aae2"
}
```

crvs office:
```json
/* 1 */
{
    "_id" : ObjectId("6041eb0f554d46001d386d17"),
    "resourceType" : "Location",
    "identifier" : [ 
        {
            "system" : "http://opencrvs.org/specs/id/internal-id",
            "value" : "CRVS_OFFICE_ezsliaw6gka"
        }
    ],
    "name" : "Immigration Deparment",
    "alias" : [ 
        "Immigration Deparment"
    ],
    "status" : "active",
    "mode" : "instance",
    "partOf" : {
        "reference" : "Location/23e6df84-ae7c-437d-ad0f-086d5619aae2"
    },
    "type" : {
        "coding" : [ 
            {
                "system" : "http://opencrvs.org/specs/location-type",
                "code" : "CRVS_OFFICE"
            }
        ]
    },
    "physicalType" : {
        "coding" : [ 
            {
                "code" : "bu",
                "display" : "Building"
            }
        ]
    },
    "telecom" : [],
    "address" : {
        "line" : [],
        "district" : "Kombo North",
        "state" : "Western 1"
    },
    "meta" : {
        "lastUpdated" : "2021-03-05T08:25:51.421+00:00",
        "versionId" : "958a1968-b7e2-431f-8b64-61107765376f"
    },
    "_transforms" : {
        "meta" : {
            "lastUpdated" : ISODate("2021-03-05T08:25:51.421Z")
        }
    },
    "_request" : {
        "method" : "POST"
    },
    "id" : "8dd2d6a8-db02-449c-af46-b4e04561f12a"
}
```

and the practitioner role: 

/* 2 */
```json
{
    "_id" : ObjectId("6041eb12554d46001d386fe4"),
    "resourceType" : "PractitionerRole",
    "practitioner" : {
        "reference" : "Practitioner/c3bd4267-b413-4c11-b2a6-4993a6f173b3"
    },
    "code" : [ 
        {
            "coding" : [ 
                {
                    "system" : "http://opencrvs.org/specs/roles",
                    "code" : "REGISTRATION_AGENT"
                }
            ]
        }
    ],
    "location" : [ 
        {
            "reference" : "Location/8dd2d6a8-db02-449c-af46-b4e04561f12a"
        }, 
        {
            "reference" : "Location/23e6df84-ae7c-437d-ad0f-086d5619aae2"
        }, 
        {
            "reference" : "Location/fcce021e-33c4-47c0-b9af-0774387dcc83"
        }
    ],
    "meta" : {
        "lastUpdated" : "2021-03-05T08:25:54.050+00:00",
        "versionId" : "40a9b80d-467c-40b6-b3b1-bef17be8b560"
    },
    "_transforms" : {
        "meta" : {
            "lastUpdated" : ISODate("2021-03-05T08:25:54.050Z")
        }
    },
    "_request" : {
        "method" : "POST"
    },
    "id" : "6f511465-e7b8-444b-a832-13efad977101"
}
```


Some logs after the fetch:

```json
[0] @opencrvs/user-mgnt: {"level":30,"time":1614934696697,"pid":9926,"hostname":"afoone","req":{"id":"1614934696690:afoone:9926:klw0zlxq:10010","method":"post","url":"/getUser","headers":{"content-type":"application/json","authorization":"Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzY29wZSI6WyJ2YWxpZGF0ZSIsImNlcnRpZnkiLCJkZW1vIl0sImlhdCI6MTYxNDkzMzMzNiwiZXhwIjoxNjE1NTM4MTM2LCJhdWQiOlsib3BlbmNydnM6YXV0aC11c2VyIiwib3BlbmNydnM6dXNlci1tZ250LXVzZXIiLCJvcGVuY3J2czpoZWFydGgtdXNlciIsIm9wZW5jcnZzOmdhdGV3YXktdXNlciIsIm9wZW5jcnZzOm5vdGlmaWNhdGlvbi11c2VyIiwib3BlbmNydnM6d29ya2Zsb3ctdXNlciIsIm9wZW5jcnZzOnNlYXJjaC11c2VyIiwib3BlbmNydnM6bWV0cmljcy11c2VyIiwib3BlbmNydnM6cmVzb3VyY2VzLXVzZXIiLCJvcGVuY3J2czp3ZWJob29rcy11c2VyIl0sImlzcyI6Im9wZW5jcnZzOmF1dGgtc2VydmljZSIsInN1YiI6IjYwNDFlYjEyZTA1YTk1MzFjNjk5Yzc2NiJ9.LGoRlQWKYObYEqmEPItkP00QNnn4bwDWuwYKvDImuIXyAn1qZJADY0O-EdzqTi9G-15i54TMKR_dciyowx1ez1epuk1_fx2cBXU7qPAEvRCwRRfxUOr7iFSS7_PzCp3bLVbHyrHL9q1qbms0H-EsNtdfN5CGNGsbCsrCoGQAFimlPTRLN7mRuTNinVYlbEC7lJYvWO3z4CrHX9XkhMbT40y4h1xi87D-X3NytM-OuIp2xCP6oeVAJ15tFlsOO04mCxLysZBsARDtEBSqOTsg_cc7zChKNEVNQP3YcEAWDucVLcuFupNYf8J_zMySt-OT0bAVmXPnZnunCmigybpBOQ","accept":"*/*","content-length":"37","user-agent":"node-fetch/1.0 (+https://github.com/bitinn/node-fetch)","accept-encoding":"gzip,deflate","connection":"close","host":"localhost:3030"},"remoteAddress":"127.0.0.1","remotePort":48622},"req":{"id":"1614934696690:afoone:9926:klw0zlxq:10010","method":"post","url":"/getUser","headers":{"content-type":"application/json","authorization":"Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzY29wZSI6WyJ2YWxpZGF0ZSIsImNlcnRpZnkiLCJkZW1vIl0sImlhdCI6MTYxNDkzMzMzNiwiZXhwIjoxNjE1NTM4MTM2LCJhdWQiOlsib3BlbmNydnM6YXV0aC11c2VyIiwib3BlbmNydnM6dXNlci1tZ250LXVzZXIiLCJvcGVuY3J2czpoZWFydGgtdXNlciIsIm9wZW5jcnZzOmdhdGV3YXktdXNlciIsIm9wZW5jcnZzOm5vdGlmaWNhdGlvbi11c2VyIiwib3BlbmNydnM6d29ya2Zsb3ctdXNlciIsIm9wZW5jcnZzOnNlYXJjaC11c2VyIiwib3BlbmNydnM6bWV0cmljcy11c2VyIiwib3BlbmNydnM6cmVzb3VyY2VzLXVzZXIiLCJvcGVuY3J2czp3ZWJob29rcy11c2VyIl0sImlzcyI6Im9wZW5jcnZzOmF1dGgtc2VydmljZSIsInN1YiI6IjYwNDFlYjEyZTA1YTk1MzFjNjk5Yzc2NiJ9.LGoRlQWKYObYEqmEPItkP00QNnn4bwDWuwYKvDImuIXyAn1qZJADY0O-EdzqTi9G-15i54TMKR_dciyowx1ez1epuk1_fx2cBXU7qPAEvRCwRRfxUOr7iFSS7_PzCp3bLVbHyrHL9q1qbms0H-EsNtdfN5CGNGsbCsrCoGQAFimlPTRLN7mRuTNinVYlbEC7lJYvWO3z4CrHX9XkhMbT40y4h1xi87D-X3NytM-OuIp2xCP6oeVAJ15tFlsOO04mCxLysZBsARDtEBSqOTsg_cc7zChKNEVNQP3YcEAWDucVLcuFupNYf8J_zMySt-OT0bAVmXPnZnunCmigybpBOQ","accept":"*/*","content-length":"37","user-agent":"node-fetch/1.0 (+https://github.com/bitinn/node-fetch)","accept-encoding":"gzip,deflate","connection":"close","host":"localhost:3030"},"remoteAddress":"127.0.0.1","remotePort":48622},"res":{"statusCode":200,"headers":{"content-type":"application/json; charset=utf-8","vary":"origin","access-control-expose-headers":"WWW-Authenticate,Server-Authorization","cache-control":"no-cache","content-length":771}},"responseTime":7,"msg":"request completed","v":1}
[0] @opencrvs/user-mgnt: {"level":30,"time":1614934696711,"pid":9926,"hostname":"afoone","req":{"id":"1614934696703:afoone:9926:klw0zlxq:10011","method":"post","url":"/getUser","headers":{"content-type":"application/json","authorization":"Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzY29wZSI6WyJ2YWxpZGF0ZSIsImNlcnRpZnkiLCJkZW1vIl0sImlhdCI6MTYxNDkzMzMzNiwiZXhwIjoxNjE1NTM4MTM2LCJhdWQiOlsib3BlbmNydnM6YXV0aC11c2VyIiwib3BlbmNydnM6dXNlci1tZ250LXVzZXIiLCJvcGVuY3J2czpoZWFydGgtdXNlciIsIm9wZW5jcnZzOmdhdGV3YXktdXNlciIsIm9wZW5jcnZzOm5vdGlmaWNhdGlvbi11c2VyIiwib3BlbmNydnM6d29ya2Zsb3ctdXNlciIsIm9wZW5jcnZzOnNlYXJjaC11c2VyIiwib3BlbmNydnM6bWV0cmljcy11c2VyIiwib3BlbmNydnM6cmVzb3VyY2VzLXVzZXIiLCJvcGVuY3J2czp3ZWJob29rcy11c2VyIl0sImlzcyI6Im9wZW5jcnZzOmF1dGgtc2VydmljZSIsInN1YiI6IjYwNDFlYjEyZTA1YTk1MzFjNjk5Yzc2NiJ9.LGoRlQWKYObYEqmEPItkP00QNnn4bwDWuwYKvDImuIXyAn1qZJADY0O-EdzqTi9G-15i54TMKR_dciyowx1ez1epuk1_fx2cBXU7qPAEvRCwRRfxUOr7iFSS7_PzCp3bLVbHyrHL9q1qbms0H-EsNtdfN5CGNGsbCsrCoGQAFimlPTRLN7mRuTNinVYlbEC7lJYvWO3z4CrHX9XkhMbT40y4h1xi87D-X3NytM-OuIp2xCP6oeVAJ15tFlsOO04mCxLysZBsARDtEBSqOTsg_cc7zChKNEVNQP3YcEAWDucVLcuFupNYf8J_zMySt-OT0bAVmXPnZnunCmigybpBOQ","_extensionstack":"[object Object]","accept":"*/*","content-length":"37","user-agent":"node-fetch/1.0 (+https://github.com/bitinn/node-fetch)","accept-encoding":"gzip,deflate","connection":"close","host":"localhost:3030"},"remoteAddress":"127.0.0.1","remotePort":48624},"req":{"id":"1614934696703:afoone:9926:klw0zlxq:10011","method":"post","url":"/getUser","headers":{"content-type":"application/json","authorization":"Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzY29wZSI6WyJ2YWxpZGF0ZSIsImNlcnRpZnkiLCJkZW1vIl0sImlhdCI6MTYxNDkzMzMzNiwiZXhwIjoxNjE1NTM4MTM2LCJhdWQiOlsib3BlbmNydnM6YXV0aC11c2VyIiwib3BlbmNydnM6dXNlci1tZ250LXVzZXIiLCJvcGVuY3J2czpoZWFydGgtdXNlciIsIm9wZW5jcnZzOmdhdGV3YXktdXNlciIsIm9wZW5jcnZzOm5vdGlmaWNhdGlvbi11c2VyIiwib3BlbmNydnM6d29ya2Zsb3ctdXNlciIsIm9wZW5jcnZzOnNlYXJjaC11c2VyIiwib3BlbmNydnM6bWV0cmljcy11c2VyIiwib3BlbmNydnM6cmVzb3VyY2VzLXVzZXIiLCJvcGVuY3J2czp3ZWJob29rcy11c2VyIl0sImlzcyI6Im9wZW5jcnZzOmF1dGgtc2VydmljZSIsInN1YiI6IjYwNDFlYjEyZTA1YTk1MzFjNjk5Yzc2NiJ9.LGoRlQWKYObYEqmEPItkP00QNnn4bwDWuwYKvDImuIXyAn1qZJADY0O-EdzqTi9G-15i54TMKR_dciyowx1ez1epuk1_fx2cBXU7qPAEvRCwRRfxUOr7iFSS7_PzCp3bLVbHyrHL9q1qbms0H-EsNtdfN5CGNGsbCsrCoGQAFimlPTRLN7mRuTNinVYlbEC7lJYvWO3z4CrHX9XkhMbT40y4h1xi87D-X3NytM-OuIp2xCP6oeVAJ15tFlsOO04mCxLysZBsARDtEBSqOTsg_cc7zChKNEVNQP3YcEAWDucVLcuFupNYf8J_zMySt-OT0bAVmXPnZnunCmigybpBOQ","_extensionstack":"[object Object]","accept":"*/*","content-length":"37","user-agent":"node-fetch/1.0 (+https://github.com/bitinn/node-fetch)","accept-encoding":"gzip,deflate","connection":"close","host":"localhost:3030"},"remoteAddress":"127.0.0.1","remotePort":48624},"res":{"statusCode":200,"headers":{"content-type":"application/json; charset=utf-8","vary":"origin","access-control-expose-headers":"WWW-Authenticate,Server-Authorization","cache-control":"no-cache","content-length":771}},"responseTime":8,"msg":"request completed","v":1}
[0] @opencrvs/gateway: [0] {"level":30,"time":1614934696749,"pid":10134,"hostname":"afoone","req":{"id":"1614934696685:afoone:10134:klw10369:10004","method":"post","url":"/graphql","headers":{"host":"localhost:7070","accept-encoding":"deflate, gzip, br","connection":"keep-alive","accept":"*/*","authorization":"Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzY29wZSI6WyJ2YWxpZGF0ZSIsImNlcnRpZnkiLCJkZW1vIl0sImlhdCI6MTYxNDkzMzMzNiwiZXhwIjoxNjE1NTM4MTM2LCJhdWQiOlsib3BlbmNydnM6YXV0aC11c2VyIiwib3BlbmNydnM6dXNlci1tZ250LXVzZXIiLCJvcGVuY3J2czpoZWFydGgtdXNlciIsIm9wZW5jcnZzOmdhdGV3YXktdXNlciIsIm9wZW5jcnZzOm5vdGlmaWNhdGlvbi11c2VyIiwib3BlbmNydnM6d29ya2Zsb3ctdXNlciIsIm9wZW5jcnZzOnNlYXJjaC11c2VyIiwib3BlbmNydnM6bWV0cmljcy11c2VyIiwib3BlbmNydnM6cmVzb3VyY2VzLXVzZXIiLCJvcGVuY3J2czp3ZWJob29rcy11c2VyIl0sImlzcyI6Im9wZW5jcnZzOmF1dGgtc2VydmljZSIsInN1YiI6IjYwNDFlYjEyZTA1YTk1MzFjNjk5Yzc2NiJ9.LGoRlQWKYObYEqmEPItkP00QNnn4bwDWuwYKvDImuIXyAn1qZJADY0O-EdzqTi9G-15i54TMKR_dciyowx1ez1epuk1_fx2cBXU7qPAEvRCwRRfxUOr7iFSS7_PzCp3bLVbHyrHL9q1qbms0H-EsNtdfN5CGNGsbCsrCoGQAFimlPTRLN7mRuTNinVYlbEC7lJYvWO3z4CrHX9XkhMbT40y4h1xi87D-X3NytM-OuIp2xCP6oeVAJ15tFlsOO04mCxLysZBsARDtEBSqOTsg_cc7zChKNEVNQP3YcEAWDucVLcuFupNYf8J_zMySt-OT0bAVmXPnZnunCmigybpBOQ","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36","content-type":"application/json","origin":"http://localhost:3000","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:3000/","accept-language":"es-ES,es;q=0.9,en;q=0.8","content-length":"834"},"remoteAddress":"127.0.0.1","remotePort":53168},"req":{"id":"1614934696685:afoone:10134:klw10369:10004","method":"post","url":"/graphql","headers":{"host":"localhost:7070","accept-encoding":"deflate, gzip, br","connection":"keep-alive","accept":"*/*","authorization":"Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzY29wZSI6WyJ2YWxpZGF0ZSIsImNlcnRpZnkiLCJkZW1vIl0sImlhdCI6MTYxNDkzMzMzNiwiZXhwIjoxNjE1NTM4MTM2LCJhdWQiOlsib3BlbmNydnM6YXV0aC11c2VyIiwib3BlbmNydnM6dXNlci1tZ250LXVzZXIiLCJvcGVuY3J2czpoZWFydGgtdXNlciIsIm9wZW5jcnZzOmdhdGV3YXktdXNlciIsIm9wZW5jcnZzOm5vdGlmaWNhdGlvbi11c2VyIiwib3BlbmNydnM6d29ya2Zsb3ctdXNlciIsIm9wZW5jcnZzOnNlYXJjaC11c2VyIiwib3BlbmNydnM6bWV0cmljcy11c2VyIiwib3BlbmNydnM6cmVzb3VyY2VzLXVzZXIiLCJvcGVuY3J2czp3ZWJob29rcy11c2VyIl0sImlzcyI6Im9wZW5jcnZzOmF1dGgtc2VydmljZSIsInN1YiI6IjYwNDFlYjEyZTA1YTk1MzFjNjk5Yzc2NiJ9.LGoRlQWKYObYEqmEPItkP00QNnn4bwDWuwYKvDImuIXyAn1qZJADY0O-EdzqTi9G-15i54TMKR_dciyowx1ez1epuk1_fx2cBXU7qPAEvRCwRRfxUOr7iFSS7_PzCp3bLVbHyrHL9q1qbms0H-EsNtdfN5CGNGsbCsrCoGQAFimlPTRLN7mRuTNinVYlbEC7lJYvWO3z4CrHX9XkhMbT40y4h1xi87D-X3NytM-OuIp2xCP6oeVAJ15tFlsOO04mCxLysZBsARDtEBSqOTsg_cc7zChKNEVNQP3YcEAWDucVLcuFupNYf8J_zMySt-OT0bAVmXPnZnunCmigybpBOQ","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36","content-type":"application/json","origin":"http://localhost:3000","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:3000/","accept-language":"es-ES,es;q=0.9,en;q=0.8","content-length":"834"},"remoteAddress":"127.0.0.1","remotePort":53168},"res":{"statusCode":200,"headers":{"content-type":"application/json; charset=utf-8","vary":"origin,accept-encoding","access-control-allow-origin":"http://localhost:3000","access-control-expose-headers":"WWW-Authenticate,Server-Authorization","cache-control":"no-cache","content-encoding":"gzip"}},"responseTime":64,"msg":"request completed","v":1}
[0] @opencrvs/gateway: [0] {"level":30,"time":1614934696749,"pid":10134,"hostname":"afoone","tags":["info"],"data":"{\"operationName\":null,\"variables\":{\"userId\":\"6041eb12e05a9531c699c766\"},\"query\":\"query ($userId: String!) {\\n  getUser(userId: $userId) {\\n    userMgntUserID\\n    practitionerId\\n    mobile\\n    role\\n    type\\n    status\\n    name {\\n      use\\n      firstNames\\n      familyName\\n      __typename\\n    }\\n    catchmentArea {\\n      id\\n      name\\n      alias\\n      status\\n      identifier {\\n        system\\n        value\\n        __typename\\n      }\\n      __typename\\n    }\\n    primaryOffice {\\n      id\\n      name\\n      alias\\n      status\\n      __typename\\n    }\\n    localRegistrar {\\n      name {\\n        use\\n        firstNames\\n        familyName\\n        __typename\\n      }\\n      role\\n      signature {\\n        data\\n        type\\n        __typename\\n      }\\n      __typename\\n    }\\n    __typename\\n  }\\n}\\n\"}","v":1}

```

So, maybe I'm missing something on the data structure that I've uploaded, but I don't know what exactly is.



2. One of our requirements is that every agent of every role can retrieve the information of every patient/citizen at every moment. This is for immunization data in the opencrvs (it's a World Bank requirement). So, what is the best way to achieve this? Can I set an opencrvs office for all the country?

3. Other requirement is to retrieve and complete more information on a finished (already issued) Birth Certification, I'd love some guidance to achieve this. Can I create other "form" only for adding an encounter or something like this? Editing previous not-mandatory information?

4. Which will be the best way to prepropulate data from other sources? Creating a draft BR for all the people?


