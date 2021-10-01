{
    "decisiontable": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2021-09-21T05:04:06",
        "displayName": "New Decision Table",
        "hitPolicy": "UNIQUE",
        "description": "Design a new Decision Table by adding inputs and outputs.",
        "rules": [
            {
                "comments": "Four Wheeler, Value = 8,00,000 to 12,00,000, Premium = 24000",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"24000\""
                }],
                "inputEntry": [
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleType = \"Four wheeler\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleValue in [800000..1200000])"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(nilDepreciation = \"Yes\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(NCBProtection = \"Yes\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Four Wheeler, Value = 8,00,000 to 12,00,000, Premium = 22000",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"22000\""
                }],
                "inputEntry": [
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleType = \"Four wheeler\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleValue in [800000..1200000])"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(nilDepreciation = \"No\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(NCBProtection = \"Yes\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Four Wheeler, Value = 8,00,000 to 12,00,000, Premium = 22000",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"22000\""
                }],
                "inputEntry": [
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleType = \"Four wheeler\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleValue in [800000..1200000])"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(nilDepreciation = \"Yes\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(NCBProtection = \"No\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Four Wheeler, Value = 8,00,000 to 12,00,000, Premium = 20000",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"20000\""
                }],
                "inputEntry": [
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleType = \"Four wheeler\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleValue in [800000..1200000])"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(nilDepreciation = \"No\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(NCBProtection = \"No\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Four Wheeler, Value = 4,00,000 to 800,000, Premium = 12000",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"12000\""
                }],
                "inputEntry": [
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleType = \"Four wheeler\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleValue in [400000..799999])"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(nilDepreciation = \"Yes\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(NCBProtection = \"Yes\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Four Wheeler, Value = 4,00,000 to 800,000, Premium = 11000",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"11000\""
                }],
                "inputEntry": [
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleType = \"Four wheeler\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleValue in [400000..799999])"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(nilDepreciation = \"No\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(NCBProtection = \"Yes\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Four Wheeler, Value = 4,00,000 to 800,000, Premium = 11000",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"11000\""
                }],
                "inputEntry": [
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleType = \"Four wheeler\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleValue in [400000..799999])"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(nilDepreciation = \"Yes\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(NCBProtection = \"No\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Four Wheeler, Value = 4,00,000 to 800,000, Premium = 10000",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"10000\""
                }],
                "inputEntry": [
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleType = \"Four wheeler\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleValue in [400000..799999])"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(nilDepreciation = \"No\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(NCBProtection = \"No\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Two Wheeler, Value = 50,000 to 100,000, Premium is 2600",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"2600\""
                }],
                "inputEntry": [
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleType = \"Two wheeler\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleValue in [50000..100000])"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(nilDepreciation = \"Yes\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(NCBProtection = \"Yes\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Two Wheeler, Value = 50,000 to 100,000, Premium = 2300",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"2300\""
                }],
                "inputEntry": [
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleType = \"Two wheeler\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleValue in [50000..100000])"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(nilDepreciation = \"No\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(NCBProtection = \"Yes\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Two Wheeler, Value = 50,000 to 100,000, Premium = 2300",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"2300\""
                }],
                "inputEntry": [
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleType = \"Two wheeler\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleValue in [50000..100000])"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(nilDepreciation = \"Yes\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(NCBProtection = \"No\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Two Wheeler, Value = 50,000 to 100,000, Premium = 2000",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"2000\""
                }],
                "inputEntry": [
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleType = \"Two wheeler\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleValue in [50000..100000])"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(nilDepreciation = \"No\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(NCBProtection = \"No\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Two Wheeler, Value = 20,000 to 50,000, Premium = 1400",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"1400\""
                }],
                "inputEntry": [
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleType = \"Two wheeler\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleValue in [20000..49999])"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(nilDepreciation = \"Yes\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(NCBProtection = \"Yes\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Two Wheeler, Value = 20,000 to 50,000, Premium = 1200",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"1200\""
                }],
                "inputEntry": [
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleType = \"Two wheeler\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleValue in [20000..49999])"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(nilDepreciation = \"No\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(NCBProtection = \"Yes\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Two Wheeler, Value = 20,000 to 50,000, Premium = 1200",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"1200\""
                }],
                "inputEntry": [
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleType = \"Two wheeler\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleValue in [20000..49999])"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(nilDepreciation = \"Yes\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(NCBProtection = \"No\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Two Wheeler, Value = 20,000 to 50,000, Premium = 1000",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"1000\""
                }],
                "inputEntry": [
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleType = \"Two wheeler\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(vehicleValue in [20000..49999])"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(nilDepreciation = \"No\")"
                    },
                    {
                        "domainName": "VehicleObjects",
                        "text": "(NCBProtection = \"No\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            }
        ],
        "preferredOrientation": "RULE_AS_ROW",
        "output": [{
            "primitive": false,
            "itemDefinitionId": "InsurancePremiumDM.PremiumAmount.premiumAmount",
            "outputValues": null,
            "groupLabel": "PremiumAmount",
            "description": null,
            "defaultOutputEntry": {
                "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "attributeName": null,
                "id": null,
                "text": null
            },
            "allowedAttributes": [],
            "label": null,
            "collection": false,
            "parentId": "InsurancePremiumDM.PremiumAmount",
            "explicit": true,
            "groupDescription": null,
            "name": "premiumAmount",
            "typeRef": "string"
        }],
        "input": [{
            "primitive": false,
            "itemDefinitionId": "InsurancePremiumDM.VehicleObjects",
            "format": null,
            "groupLabel": "VehicleObjects",
            "description": null,
            "allowedAttributes": [
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "vehicleType",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "vehicleType",
                    "id": "InsurancePremiumDM.VehicleObjects.vehicleType",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "vehicleValue",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "vehicleValue",
                    "id": "InsurancePremiumDM.VehicleObjects.vehicleValue",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "nilDepreciation",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "nilDepreciation",
                    "id": "InsurancePremiumDM.VehicleObjects.nilDepreciation",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "NCBProtection",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "NCBProtection",
                    "id": "InsurancePremiumDM.VehicleObjects.NCBProtection",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                }
            ],
            "label": null,
            "collection": false,
            "parentId": "InsurancePremiumDM.VehicleObjects",
            "explicit": true,
            "groupDescription": null,
            "inputExpression": {
                "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "attributeName": null,
                "id": null,
                "text": "VehicleObjects"
            },
            "inputValues": null,
            "typeRef": "VehicleObjects"
        }],
        "operations": {
            "workflowData": [],
            "webhookData": [],
            "replaceInputs": []
        },
        "outputLabel": null,
        "name": "decisiontable",
        "namespace": "InsurancePremiumDM",
        "comment": null,
        "id": "InsurancePremiumDM.decisiontable"
    },
    "decisionmodel": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2021-09-16T04:54:57",
        "displayName": "InsurancePremiumDM",
        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "description": "model",
        "published": true,
        "decisionModelNamespace": "InsurancePremiumDM",
        "tables": ["InsurancePremiumDM.decisiontable"],
        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "namespace": "http://asg.com/policies/dmn/v1/",
        "name": "model",
        "id": "InsurancePremiumDM.model",
        "category": null
    },
    "namespace": {
        "lastModifiedDate": "2021-09-16T10:24:57",
        "author": "policyadmin",
        "description": "InsurancePremiumDM",
        "id": "InsurancePremiumDM"
    },
    "itemdefinitions": [
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2021-09-20T08:29:51",
            "externalSourceDetails": null,
            "displayName": "VehicleObjects",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "44f7e08a-1d4e-4d53-9748-b9e7cfe4d998",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "vehicleType",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "InsurancePremiumDM.VehicleObjects",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "InsurancePremiumDM",
                    "name": "vehicleType",
                    "id": "InsurancePremiumDM.VehicleObjects.vehicleType",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "vehicleValue",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "InsurancePremiumDM.VehicleObjects",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "InsurancePremiumDM",
                    "name": "vehicleValue",
                    "id": "InsurancePremiumDM.VehicleObjects.vehicleValue",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "nilDepreciation",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "InsurancePremiumDM.VehicleObjects",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "InsurancePremiumDM",
                    "name": "nilDepreciation",
                    "id": "InsurancePremiumDM.VehicleObjects.nilDepreciation",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "NCBProtection",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "InsurancePremiumDM.VehicleObjects",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "InsurancePremiumDM",
                    "name": "NCBProtection",
                    "id": "InsurancePremiumDM.VehicleObjects.NCBProtection",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                }
            ],
            "namespace": "InsurancePremiumDM",
            "name": "VehicleObjects",
            "modifiedBy": null,
            "id": "InsurancePremiumDM.VehicleObjects",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [
                    {
                        "displayName": "vehicleType",
                        "typeRef": "string"
                    },
                    {
                        "displayName": "vehicleValue",
                        "typeRef": "number"
                    },
                    {
                        "displayName": "nilDepreciation",
                        "typeRef": "string"
                    },
                    {
                        "displayName": "NCBProtection",
                        "typeRef": "string"
                    }
                ],
                "inputType": "Custom"
            },
            "typeRef": "VehicleObjects"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2021-09-20T08:34:52",
            "externalSourceDetails": null,
            "displayName": "PremiumAmount",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "005082a6-276a-4b5c-aef4-0fccbc1c7fa2",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "externalSourceDetails": null,
                "displayName": "premiumAmount",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": "InsurancePremiumDM.PremiumAmount",
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "InsurancePremiumDM",
                "name": "premiumAmount",
                "id": "InsurancePremiumDM.PremiumAmount.premiumAmount",
                "isGeoEnabled": false,
                "typeRef": "string"
            }],
            "namespace": "InsurancePremiumDM",
            "name": "PremiumAmount",
            "modifiedBy": null,
            "id": "InsurancePremiumDM.PremiumAmount",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [],
                "inputType": "Database",
                "datasourceName": {
                    "type": 13,
                    "createdOn": "2021-09-16T10:20:37.385+05:30",
                    "referenceId": "f129205c-500a-46ce-9319-90aa06739c3e",
                    "parentName": "Datasources",
                    "modifiedOn": "2021-09-16T10:20:47.556+05:30",
                    "contentAsString": "",
                    "size": 0,
                    "buildProgress": false,
                    "name": "InsurancePremiumDS.ds",
                    "location": "/InsurancePremiumFinder/Datasources",
                    "id": "06a098c4-fb31-40e4-b351-806e9fdc325f",
                    "projectId": "50409d97-5d08-4a10-9095-051b3fafe9aa",
                    "properties": {
                        "isWorkspaceReady": true,
                        "datasource": {
                            "datasourceType": 0,
                            "modifiedOn": "2021-09-16 10:20:37.369",
                            "datasourceProperties": {
                                "connectionMeta": {
                                    "instance": "",
                                    "port": "5432",
                                    "host": "localhost",
                                    "driverName": "Thin",
                                    "connectionType": false,
                                    "sid": ""
                                },
                                "password": "postgres",
                                "databaseName": "InsurancePremium",
                                "jdbcString": "jdbc:postgresql://localhost:5432/InsurancePremium",
                                "vendor": "PostgreSQL",
                                "poolSize": 3,
                                "isEncrypted": true,
                                "isJdbcUrl": false,
                                "datasourceId": "f129205c-500a-46ce-9319-90aa06739c3e",
                                "active": 1,
                                "id": "ba7fc866-353b-41f5-8a18-ce12c33843c8",
                                "username": "postgres"
                            },
                            "name": "InsurancePremiumDS",
                            "id": "f129205c-500a-46ce-9319-90aa06739c3e",
                            "applicationId": "50409d97-5d08-4a10-9095-051b3fafe9aa",
                            "createdOn": "2021-09-16 10:20:37.369"
                        }
                    }
                },
                "tableName": {
                    "schema": "public",
                    "name": "insurancePremium"
                }
            },
            "typeRef": "PremiumAmount"
        }
    ]
}