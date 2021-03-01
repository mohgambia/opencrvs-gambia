Race and Ethnicity is not in person's fhir

nationaliti is not in persons fhir

```json
                {
                  "name": "nationality",
                  "type": "SELECT_WITH_OPTIONS",
                  "label": {
                    "defaultMessage": "Nationality",
                    "description": "Title for the nationality select",
                    "id": "form.field.label.nationality"
                  },
                  "required": false,
                  "initialValue": "GMB",
                  "validate": [],
                  "placeholder": {
                    "defaultMessage": "Select",
                    "description": "Placeholder text for a select",
                    "id": "form.field.select.placeholder"
                  },
                  "options": {
                    "resource": "countries"
                  },
                  "mapping": {
                    "mutation": {
                      "operation": "birthEventLocationMutationTransformer",
                      "parameters": []
                    },
                    "query": {
                      "operation": "eventLocationQueryTransformer",
                      "parameters": []
                    }
                  }
                },
                ```



Birth Time is not in Person's FHIR


```json
{
    "name": "childBirthTimeHours",
    "type": "SELECT_WITH_OPTIONS",
    "label": {
      "defaultMessage": "Time of birth (hours)",
      "description": "Label for form field: Date of birth",
      "id": "form.field.label.childTimeOfBirthHours"
    },
    "required": false,
    "initialValue": "",
    "validate": [
    ],
    "mapping": {
      "mutation": {
        "operation": "longDateTransformer",
        "parameters": [
          "birthTime"
        ]
      },
      "query": {
        "operation": "fieldValueTransformer",
        "parameters": [
          "birthTime"
        ]
      }
    },
    "options": [
      {
        "value": "00",
        "label": {
          "defaultMessage": "00",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.00"
        }
      },
      {
        "value": "01",
        "label": {
          "defaultMessage": "01",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.01"
        }
      },
      {
        "value": "02",
        "label": {
          "defaultMessage": "02",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.02"
        }
      },
      {
        "value": "03",
        "label": {
          "defaultMessage": "03",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.03"
        }
      },
      {
        "value": "04",
        "label": {
          "defaultMessage": "04",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.04"
        }
      },
      {
        "value": "05",
        "label": {
          "defaultMessage": "05",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.05"
        }
      },
      {
        "value": "06",
        "label": {
          "defaultMessage": "06",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.06"
        }
      },
      {
        "value": "08",
        "label": {
          "defaultMessage": "08",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.08"
        }
      },
      {
        "value": "09",
        "label": {
          "defaultMessage": "09",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.09"
        }
      },
      {
        "value": "10",
        "label": {
          "defaultMessage": "10",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.10"
        }
      },
      {
        "value": "11",
        "label": {
          "defaultMessage": "11",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.11"
        }
      },
      {
        "value": "12",
        "label": {
          "defaultMessage": "12",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.12"
        }
      },
      {
        "value": "13",
        "label": {
          "defaultMessage": "13",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.13"
        }
      },
      {
        "value": "14",
        "label": {
          "defaultMessage": "14",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.14"
        }
      },
      {
        "value": "15",
        "label": {
          "defaultMessage": "15",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.15"
        }
      },
      {
        "value": "16",
        "label": {
          "defaultMessage": "16",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.16"
        }
      },
      {
        "value": "17",
        "label": {
          "defaultMessage": "17",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.17"
        }
      },
      {
        "value": "18",
        "label": {
          "defaultMessage": "18",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.18"
        }
      },
      {
        "value": "19",
        "label": {
          "defaultMessage": "19",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.19"
        }
      },
      {
        "value": "20",
        "label": {
          "defaultMessage": "20",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.20"
        }
      },
      {
        "value": "21",
        "label": {
          "defaultMessage": "21",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.21"
        }
      },
      {
        "value": "22",
        "label": {
          "defaultMessage": "22",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.22"
        }
      },
      {
        "value": "23",
        "label": {
          "defaultMessage": "23",
          "description": "Option for form field: BirthTimeHours",
          "id": "form.field.label.23"
        }
      }
    ]
  },
  {
    "name": "childBirthTimeHours",
    "type": "SELECT_WITH_OPTIONS",
    "label": {
      "defaultMessage": "Time of birth (mins)",
      "description": "Label for form field: Date of birth",
      "id": "form.field.label.childTimeOfBirthMins"
    },
    "required": false,
    "initialValue": "",
    "validate": [
    ],
    "mapping": {
      "mutation": {
        "operation": "longDateTransformer",
        "parameters": [
          "birthTime"
        ]
      },
      "query": {
        "operation": "fieldValueTransformer",
        "parameters": [
          "birthTime"
        ]
      }
    },
    "options": [
      {
        "value": "00",
        "label": {
          "defaultMessage": "00",
          "description": "Option for form field: BirthTimeMinutes",
          "id": "form.field.label.00"
        }
      },
      {
        "value": "15",
        "label": {
          "defaultMessage": "15",
          "description": "Option for form field: BirthTimeMinutes",
          "id": "form.field.label.15"
        }
      },
      {
        "value": "30",
        "label": {
          "defaultMessage": "30",
          "description": "Option for form field: BirthTimeMinutes",
          "id": "form.field.label.30"
        }
      },
      {
        "value": "45",
        "label": {
          "defaultMessage": "45",
          "description": "Option for form field: BirthTimeMinutes",
          "id": "form.field.label.45"
        }
      }
    ]
  },
  ```