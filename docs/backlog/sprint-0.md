# Sprint 0: Foundation

**Sprint goal:** a working development environment and the base data and security model for Support Hub.

---

## SUP-001: Set up the development environment
**Type:** Chore · **Estimate:** 2h

**Story:** As a developer, I want a reproducible local setup so that any teammate can deploy the project to a fresh org.

**Acceptance criteria**
- [x] A Salesforce Developer Edition org exists and is enabled as Dev Hub
- [x] Salesforce CLI (`sf`) and VS Code with the Salesforce extensions are installed
- [x] `sf org create scratch -f config/project-scratch-def.json -a support-hub` creates a scratch org
- [x] `docs/setup.md` lists the exact steps, tested from zero

**Learning goals:** Salesforce DX, source-driven development, scratch orgs vs sandboxes, org authorization.

---

## SUP-002: Extend the Case data model
**Type:** Story · **Estimate:** 3h

**Story:** As a support agent, I want structured case fields so that cases can be routed and reported on.

**Acceptance criteria**
- [x] Picklist `Category__c` on Case: Billing, Technical, Account Access, Feature Request
- [x] Picklist `Product_Area__c`: Compute, Storage, Databases, Networking
- [x] Picklist `Severity__c`: S1 Critical, S2 High, S3 Medium, S4 Low
- [x] Fields are added to the Case page layout in a clear section
- [x] Field-level help text explains each field
- [x] Metadata is retrieved to the repo (`sf project retrieve start`)

**Learning goals:** custom fields, picklists and value sets, page layouts, retrieving metadata into source control.

---

## SUP-003: Support queues and assignment rules
**Type:** Story · **Estimate:** 3h

**Story:** As Helen, I want new cases routed to the correct team so that agents only see relevant work.

**Acceptance criteria**
- [x] Queues: Billing Support, Technical Support, Account Support, plus a Triage fallback
- [x] Case assignment rule routes by `Category__c`; anything unmatched goes to Triage
- [x] The rule is active and documented in `docs/adr/` with the reason for the fallback
- [x] Tested with four sample cases, one per category

**Learning goals:** queues, assignment rules, rule entry order, difference between ownership by user and by queue.

---

## SUP-004: Roles, profiles and permission sets
**Type:** Story · **Estimate:** 4h

**Story:** As an administrator, I want least-privilege access so that agents and supervisors only do what they should.

**Acceptance criteria**
- [x] Permission set **Support Agent**: read/create/edit Case, no delete
- [x] Permission set **Support Supervisor**: everything an agent has, plus reports and reassigning cases
- [x] Role hierarchy: Supervisor above Agents so supervisors see agents' cases
- [x] Org-wide default for Case is Private
- [x] Two test users (one agent, one supervisor) prove the visibility rules

**Learning goals:** the security model layers (OWD, roles, sharing, profiles, permission sets, field-level security) and why permission sets are preferred over profiles.

---

## SUP-005: Web-to-Case and Email-to-Case
**Type:** Story · **Estimate:** 3h

**Story:** As a customer, I want to contact support by form or email so that I can get help without calling.

**Acceptance criteria**
- [x] Web-to-Case HTML form (in `docs/web-to-case.html`) creates a case with category and severity
- [x] Email-to-Case routing address creates cases from email
- [x] Both sources set `Origin` correctly (Web, Email)
- [x] Spam guard noted: reCAPTCHA approach documented even if not enabled in a dev org

**Learning goals:** case origins, Web-to-Case limits and risks, Email-to-Case vs On-Demand Email-to-Case.
