{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "BusinessRuleTask_11fatjy",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1cnrtfa",
                "sourceRef": "StartEvent_1y6e9jf",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ScriptTask_1is8wyx",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_rji3e4",
                "sourceRef": "BusinessRuleTask_11fatjy",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_1x3o6bq",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_sjjn9f",
                "sourceRef": "ScriptTask_1is8wyx",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_1wnbrm7",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1h1tloh",
                "sourceRef": "ServiceTask_1x3o6bq",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_1g3zk3q",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_8v80ru",
                "sourceRef": "UserTask_1wnbrm7",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "scriptTask": {
            "outgoing": "SequenceFlow_sjjn9f",
            "incoming": "SequenceFlow_rji3e4",
            "businessProp": {"exec-script": "$pm.addMemVariable(\"premiumAmount\",premium.data);"},
            "name": "Read Premium",
            "id": "ScriptTask_1is8wyx",
            "type": "bpmn:scriptTask",
            "events": []
        },
        "endEvent": {
            "incoming": "SequenceFlow_8v80ru",
            "businessProp": {},
            "name": "Stop Process",
            "id": "EndEvent_1g3zk3q",
            "type": "bpmn:endEvent"
        },
        "businessRuleTask": {
            "outgoing": "SequenceFlow_rji3e4",
            "incoming": "SequenceFlow_1cnrtfa",
            "businessProp": {
                "output": "premium",
                "businessRulePlaceholderUrl": "{{HOST}}/rest/decisiontable/{{CONTEXT}}/{{APPLICATION}}/InsurancePremiumDM.model/InsurancePremiumDM.decisiontable",
                "parameters-collaps": [{
                    "reference": "VehicleObjects",
                    "configurations": {
                        "showDelButton": false,
                        "showAddButton": false
                    },
                    "groupLabel": "VehicleObjects",
                    "label": [
                        "Name",
                        "Value"
                    ],
                    "type": "attributeGroup",
                    "primaryPanal": [
                        {
                            "reference": "name",
                            "configurations": {"disableEdit": true},
                            "type": "inputWithoutLable",
                            "maxLength": 30,
                            "events": {},
                            "parentRef": "VehicleObjects"
                        },
                        {
                            "reference": "value",
                            "type": "inputWithoutLable",
                            "events": {},
                            "parentRef": "VehicleObjects"
                        }
                    ],
                    "listType": "inputList"
                }],
                "decision-model": "{\"name\":\"InsurancePremiumDM.dm\",\"type\":17,\"parentName\":\"Decision Models\",\"location\":\"/InsurancePremiumFinder/Decision Models\",\"properties\":{\"isWorkspaceReady\":true},\"meta\":\"{}\",\"size\":0,\"errorMessage\":null,\"parentId\":\"dee45851-63d7-4c5e-9282-a0f3453259de\",\"projectId\":\"50409d97-5d08-4a10-9095-051b3fafe9aa\",\"referenceId\":null,\"namespaceId\":\"InsurancePremiumDM\",\"content\":null,\"id\":\"4338248a-d5f2-4dbf-a343-2fe2d992e146\",\"createdOn\":\"2021-09-16T10:24:57.822+05:30\",\"modifiedOn\":\"2021-09-20T14:45:35.122+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"contentAsString\":\"\",\"contentAsBytes\":null,\"buildProgress\":false}",
                "decisionmodel-id": "InsurancePremiumDM.model",
                "VehicleObjects": [
                    {
                        "name": "vehicleType",
                        "objectName": "VehicleObjects",
                        "type": null,
                        "value": "vtype"
                    },
                    {
                        "name": "vehicleValue",
                        "objectName": "VehicleObjects",
                        "type": null,
                        "value": "vamount"
                    },
                    {
                        "name": "nilDepreciation",
                        "objectName": "VehicleObjects",
                        "type": null,
                        "value": "nildepreciation"
                    },
                    {
                        "name": "NCBProtection",
                        "objectName": "VehicleObjects",
                        "type": null,
                        "value": "ncbcover"
                    }
                ],
                "parameters": [
                    {
                        "name": "vehicleType",
                        "objectName": "VehicleObjects",
                        "type": null,
                        "value": "vtype"
                    },
                    {
                        "name": "vehicleValue",
                        "objectName": "VehicleObjects",
                        "type": null,
                        "value": "vamount"
                    },
                    {
                        "name": "nilDepreciation",
                        "objectName": "VehicleObjects",
                        "type": null,
                        "value": "nildepreciation"
                    },
                    {
                        "name": "NCBProtection",
                        "objectName": "VehicleObjects",
                        "type": null,
                        "value": "ncbcover"
                    }
                ],
                "decisiontable-id": "InsurancePremiumDM.decisiontable"
            },
            "name": "EvaluatePremium",
            "id": "BusinessRuleTask_11fatjy",
            "type": "bpmn:businessRuleTask",
            "events": []
        },
        "serviceTask": {
            "outgoing": "SequenceFlow_1h1tloh",
            "incoming": "SequenceFlow_sjjn9f",
            "businessProp": {
                "headers": [{
                    "value": "\"application/x-www-form-urlencoded\"",
                    "key": "Content-Type",
                    "allowOverride": false
                }],
                "method": "POST",
                "data-source-function-data": {
                    "values": [
                        "",
                        "{\"name\":\"insertVehiclePremium\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"vehicleType\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"vehicleValue\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"nilDepreciation\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"ncbProtection\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"premiumAmount\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertVehiclePremium\",\"baseUrl\":\"/InsurancePremiumDS\",\"datasourceType\":0}"
                    ],
                    "options": [
                        "Select",
                        "insertVehiclePremium"
                    ]
                },
                "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/InsurancePremiumDS/insertVehiclePremium\"",
                "parameters-body": [
                    {
                        "paramLocation": 1,
                        "type": "",
                        "value": "vtype",
                        "key": "vehicleType",
                        "allowOverride": true
                    },
                    {
                        "paramLocation": 1,
                        "type": "",
                        "value": "vamount",
                        "key": "vehicleValue",
                        "allowOverride": true
                    },
                    {
                        "paramLocation": 1,
                        "type": "",
                        "value": "nildepreciation",
                        "key": "nilDepreciation",
                        "allowOverride": true
                    },
                    {
                        "paramLocation": 1,
                        "type": "",
                        "value": "ncbcover",
                        "key": "ncbProtection",
                        "allowOverride": true
                    },
                    {
                        "paramLocation": 1,
                        "type": "",
                        "value": "premiumAmount",
                        "key": "premiumAmount",
                        "allowOverride": true
                    }
                ],
                "data-type": 2,
                "url": "\"https://localhost:3030/rest/webservices/context/application/InsurancePremiumDS/insertVehiclePremium\"",
                "datasourceType": 0,
                "proxy": "false",
                "bodyFormData": [
                    {
                        "paramLocation": 1,
                        "type": "",
                        "value": "vtype",
                        "key": "vehicleType",
                        "allowOverride": true
                    },
                    {
                        "paramLocation": 1,
                        "type": "",
                        "value": "vamount",
                        "key": "vehicleValue",
                        "allowOverride": true
                    },
                    {
                        "paramLocation": 1,
                        "type": "",
                        "value": "nildepreciation",
                        "key": "nilDepreciation",
                        "allowOverride": true
                    },
                    {
                        "paramLocation": 1,
                        "type": "",
                        "value": "ncbcover",
                        "key": "ncbProtection",
                        "allowOverride": true
                    },
                    {
                        "paramLocation": 1,
                        "type": "",
                        "value": "premiumAmount",
                        "key": "premiumAmount",
                        "allowOverride": true
                    }
                ],
                "port": "",
                "response": "response",
                "data-source": "{\"name\":\"InsurancePremiumDS\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"50409d97-5d08-4a10-9095-051b3fafe9aa\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"f129205c-500a-46ce-9319-90aa06739c3e\",\"createdOn\":\"2021-09-16T10:20:37.369+05:30\",\"modifiedOn\":\"2021-09-16T10:20:37.369+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                "reqType": "formData",
                "host": "",
                "data-source-function": "{\"name\":\"insertVehiclePremium\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"vehicleType\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"vehicleValue\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"nilDepreciation\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"ncbProtection\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"premiumAmount\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertVehiclePremium\",\"baseUrl\":\"/InsurancePremiumDS\",\"datasourceType\":0}",
                "parameters": []
            },
            "name": "Insert Record",
            "id": "ServiceTask_1x3o6bq",
            "type": "bpmn:serviceTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_1cnrtfa",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start Process",
            "id": "StartEvent_1y6e9jf",
            "type": "bpmn:startEvent"
        },
        "id": "Process_1pdz15f",
        "userTask": {
            "outgoing": "SequenceFlow_8v80ru",
            "incoming": "SequenceFlow_1h1tloh",
            "businessProp": {
                "formType": "Existing",
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "PremiumRequester",
                    "actualData": "{\"name\":\"PremiumRequester.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/InsurancePremiumFinder/App Roles\",\"properties\":{},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":null,\"projectId\":\"50409d97-5d08-4a10-9095-051b3fafe9aa\",\"referenceId\":\"73f12a05-ed72-4abe-b204-6f02572a66a8\",\"namespaceId\":null,\"content\":null,\"id\":\"27b70dba-5f6c-48c4-a717-d4c1fc35c606\",\"createdOn\":\"2021-09-16T10:25:19.383+05:30\",\"modifiedOn\":\"2021-09-16T10:25:19.383+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"contentAsString\":\"\",\"contentAsBytes\":null,\"buildProgress\":false}"
                },
                "fromUser": "\"\"",
                "form-variables": [
                    {
                        "ref": "vtype",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "",
                        "fieldtype": "",
                        "type": "",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "vamount",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "",
                        "fieldtype": "",
                        "type": "",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "nildepreciation",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "",
                        "fieldtype": "",
                        "type": "",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "ncbcover",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "",
                        "fieldtype": "",
                        "type": "",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "premiumAmount",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "",
                        "fieldtype": "",
                        "type": "",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "range",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "",
                        "fieldtype": "",
                        "type": "",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "maxAmount",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "",
                        "fieldtype": "",
                        "type": "",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "minAmount",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "",
                        "fieldtype": "",
                        "type": "",
                        "mandatory": true,
                        "errormsg": ""
                    }
                ],
                "form-url-type": "\"absolute\"",
                "body-replace-strings": [],
                "form-url": "\"https://localhost:3030/rest/projects/50409d97-5d08-4a10-9095-051b3fafe9aa/files/5c5dac85-ca3e-4396-befc-9d87ea106269/preview\"",
                "assignee-type": "Role",
                "existingForm": "{\"name\":\"premiumfinder.vm\",\"type\":1,\"parentName\":\"UI Models\",\"location\":\"/InsurancePremiumFinder/UI Models\",\"properties\":{\"appViewId\":\"e38202ed-477c-404a-be13-a896d1ec1dbb\",\"isWorkspaceReady\":true,\"visualDistFolderId\":\"df87e488-1649-40cd-b3e8-cbd227f70792\",\"appGen\":true},\"meta\":\"{}\",\"size\":635,\"errorMessage\":null,\"parentId\":\"baf66f53-b180-4979-ae91-30bf7c33c95a\",\"projectId\":\"50409d97-5d08-4a10-9095-051b3fafe9aa\",\"referenceId\":null,\"namespaceId\":\"\",\"content\":null,\"id\":\"5c5dac85-ca3e-4396-befc-9d87ea106269\",\"createdOn\":\"2021-09-16T10:23:49.937+05:30\",\"modifiedOn\":\"2021-09-20T13:55:47.888+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"contentAsString\":\"\",\"contentAsBytes\":null,\"buildProgress\":false}",
                "email-type": "text/html",
                "attribute-references": [],
                "form-url-helper": "{\"id\":\"5c5dac85-ca3e-4396-befc-9d87ea106269\",\"projectId\":\"50409d97-5d08-4a10-9095-051b3fafe9aa\",\"name\":\"premiumfinder.vm\",\"fileLocation\":\"/InsurancePremiumFinder/UI Models\"}",
                "notify-type": "Message Only"
            },
            "name": "Notify Requester",
            "id": "UserTask_1wnbrm7",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_1pdz15f",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "StartEvent_1y6e9jf",
                    "Bounds": {
                        "cx": 38.109375312924385,
                        "cy": 329.60156697034836,
                        "x": 21.000000312924385,
                        "width": 72.40625,
                        "y": 300.00000447034836,
                        "height": 59.203125
                    },
                    "id": "StartEvent_1y6e9jf_ve"
                },
                {
                    "bpmnElement": "BusinessRuleTask_11fatjy",
                    "Bounds": {
                        "cx": 187.00000004500157,
                        "cy": 330.9999953483789,
                        "x": 110.02000431746251,
                        "width": 153.95999145507812,
                        "y": 292.83499443285154,
                        "height": 76.33000183105469
                    },
                    "id": "BusinessRuleTask_11fatjy_ve"
                },
                {
                    "bpmnElement": "ScriptTask_1is8wyx",
                    "Bounds": {
                        "cx": 398.0000305625797,
                        "cy": 330.9999953483789,
                        "x": 321.02003483504063,
                        "width": 153.95999145507812,
                        "y": 292.83499443285154,
                        "height": 76.33000183105469
                    },
                    "id": "ScriptTask_1is8wyx_ve"
                },
                {
                    "bpmnElement": "ServiceTask_1x3o6bq",
                    "Bounds": {
                        "cx": 600.0000000450016,
                        "cy": 330.9999953483789,
                        "x": 523.0200043174625,
                        "width": 153.95999145507812,
                        "y": 292.83499443285154,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_1x3o6bq_ve"
                },
                {
                    "bpmnElement": "UserTask_1wnbrm7",
                    "Bounds": {
                        "cx": 621.0000000450016,
                        "cy": 453.99999847166237,
                        "x": 544.0200043174625,
                        "width": 153.95999145507812,
                        "y": 415.834997556135,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_1wnbrm7_ve"
                },
                {
                    "bpmnElement": "EndEvent_1g3zk3q",
                    "Bounds": {
                        "cx": 599.1093836724758,
                        "cy": 585.6015707850456,
                        "x": 582.0000086724758,
                        "width": 71.0625,
                        "y": 556.0000082850456,
                        "height": 59.203125
                    },
                    "id": "EndEvent_1g3zk3q_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "57.000000312924385",
                            "y": "318.00000447034836"
                        },
                        {
                            "x": "83.51000229269266",
                            "y": "318.00000447034836"
                        },
                        {
                            "x": "83.51000229269266",
                            "y": "330.9999990844727"
                        },
                        {
                            "x": "110.02000427246094",
                            "y": "330.9999990844727"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1cnrtfa",
                    "id": "SequenceFlow_1cnrtfa_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "263.98000431746254",
                            "y": "330.99999443285157"
                        },
                        {
                            "x": "321.02000427246094",
                            "y": "330.99999574661257"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_rji3e4",
                    "id": "SequenceFlow_rji3e4_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "474.98003483504067",
                            "y": "330.99999443285157"
                        },
                        {
                            "x": "523.0200042724609",
                            "y": "330.99999586582186"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_sjjn9f",
                    "id": "SequenceFlow_sjjn9f_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "600.0000043174625",
                            "y": "369.16499443285153"
                        },
                        {
                            "x": "600.0000043174625",
                            "y": "392.49999599449325"
                        },
                        {
                            "x": "621.0000043174625",
                            "y": "392.49999599449325"
                        },
                        {
                            "x": "621.0000043174625",
                            "y": "415.834997556135"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1h1tloh",
                    "id": "SequenceFlow_1h1tloh_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "621.0000043174625",
                            "y": "492.164997556135"
                        },
                        {
                            "x": "621.0000043174625",
                            "y": "524.0825029205903"
                        },
                        {
                            "x": "600.0000086724758",
                            "y": "524.0825029205903"
                        },
                        {
                            "x": "600.0000086724758",
                            "y": "556.0000082850456"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_8v80ru",
                    "id": "SequenceFlow_8v80ru_ve"
                }
            ]
        },
        "id": "Process_1pdz15f_ve"
    },
    "collaboration": {}
}