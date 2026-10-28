# Case routing

## Queues
Billing Support, Technical Support, Account Support, Triage.

## Assignment rule: "[preencher o nome]"
| Order | Criteria | Assigned to |
|---|---|---|
| 1 | Category equals Billing | Billing Support |
| 2 | Category equals Technical | Technical Support |
| 3 | Category equals Account Access | Account Support |
| 4 | Category equals Feature Request | Triage |

## Test results
| Test case | Expected | Result |
|---|---|---|
| Category = Billing | Billing Support | [pass] |
| Category = Technical | Technical Support | [pass] |
| Category = Account Access | Account Support | [pass] |
| Category = Feature Request | Triage | [pass] |

## How to test
Tests were run manually through the Salesforce UI, with no code:
1. Create a Case with the desired `Category__c` and check
   "Assign using active assignment rules".
2. Open the Case and check the **Owner** field.
3. Log in as the test user (Carlos, a Billing agent) and confirm which Cases are visible.

## Test results
| Test case | Expected | Result |
|---|---|---|
| Category = Billing | Owner: Billing Support | [pass] |
| Category = Technical | Owner: Technical Support | [pass] |
| Category = Account Access | Owner: Account Support | [pass] |
| Category = Feature Request | Owner: Triage | [pass] |
| Carlos (Billing agent) with Case OWD Private | Sees only cases owned by him or by Billing Support | [pass] |