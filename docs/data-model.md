# Data model

Support Hub uses the standard **Case** object and extends it with custom fields.

| Field | API name | Type | Values | Purpose |
|---|---|---|---|---|
| Category | `Category__c` | Picklist | Billing, Technical, Account Access, Feature Request | Drives routing |
| Product Area | `Product_Area__c` | Picklist | Compute, Storage, Databases, Networking | Reporting |
| Severity | `Severity__c` | Picklist | S1 Critical, S2 High, S3 Medium, S4 Low | Prioritization |

## Notes
- `Category__c` is required on the page layout, not at field level (see ADR-0002).
- Fields were created in the scratch org and retrieved with `sf project retrieve start`.