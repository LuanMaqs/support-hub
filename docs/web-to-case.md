# Case intake: Web-to-Case and Email-to-Case (SUP-005)

## Overview
Customers can open cases through a public web form (Web-to-Case) or by email
(Email-to-Case). Every case created through these channels is routed by the case
assignment rule described in `docs/routing.md`.

## Web-to-Case

### Setup
1. Enabled Web-to-Case in **Setup → Web-to-Case**.
2. Set the default case origin to `Web` and a default case owner [preencher: qual].
3. Generated the HTML form with **Create Web-to-Case HTML**, adding the custom fields
   `Category__c` and `Severity__c`.
4. Configured reCAPTCHA with a free Google reCAPTCHA v2 key pair.
5. Saved the form as `docs/web-to-case.html`.

### Running the form locally
reCAPTCHA does not validate from a `file://` address, so the form is served locally:

```powershell
cd docs
python -m http.server 8000
```
Then open `http://localhost:8000/web-to-case.html`.

### Security notes
- The org ID in the committed file is a placeholder (`YOUR_ORG_ID`). Find the real one in
  **Setup → Company Information**.
- The reCAPTCHA **site key** is public. The **secret key** is configured only in the org and is
  never committed.
- In production, the form would also need rate limiting and monitoring of case volume, since
  a public form is an easy spam target.

### Test results
| Test | Expected | Result |
|---|---|---|
| Submit with Category = Billing | Case created, Origin = Web, owner = Billing Support | [pass] |
| Submit with Category = Technical | Owner = Technical Support | [pass] |
| Submit with Category = Feature Request | Owner = Triage | [pass] |
| Submit without reCAPTCHA | Rejected | [pass] |

Tests were run manually through the browser and the Salesforce UI.

## Email-to-Case

**Status: not delivered.**

I tried to configure Email-to-Case in the scratch org but could not validate it.
 Salesforce now enforces email domain verification, and I did not have a verified domain to complete the routing address setup.

Context that likely contributes (not confirmed as the root cause):
- Salesforce now enforces email domain verification for emails sent from the org. Without a
  verified domain, delivery can fail.

### What it would take in production
- A verified email domain (DKIM or Authorized Email Domains).
- A routing address verified through Email-to-Case or On-Demand Email-to-Case.
- Auto-response rules, so customers get a confirmation (covered in SUP-007).

## Known limitations
- Email-to-Case is not part of this release. Tracked in SUP-005b.
- Email delivery in a scratch org depends on the verified sender domain policy.