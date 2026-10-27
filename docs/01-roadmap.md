# Roadmap

| Sprint | Goal | Tickets | Focus |
|---|---|---|---|
| **0** | Foundation | SUP-001 to SUP-005 | Environment, data model, security, routing |
| **1** | Intake and SLA | SUP-006 to SUP-010 | Web-to-Case, entitlements, Flows, console, dashboards |
| **2** | Engineering | SUP-011 to SUP-015 | Apex trigger framework, tests, LWC, scheduled jobs, REST API |
| **3** | Intelligence and delivery | SUP-016 to SUP-018 | n8n and AI triage, CI/CD, release docs |

Detailed tickets for Sprint 0 and 1 are published. Later sprints are released as the previous one closes, like in a real team where the backlog is refined sprint by sprint.

Sprint 2 and 3 previews:

- **SUP-011** Case trigger framework: default priority and due date by category
- **SUP-012** Apex unit tests with 90%+ coverage and a test data factory
- **SUP-013** `caseSummary` LWC: customer history, open cases, SLA countdown
- **SUP-014** Scheduled Apex: close stale cases and notify owners
- **SUP-015** REST endpoint to create cases from an external system
- **SUP-016** n8n workflow: AI classification and summary written back to the case
- **SUP-017** GitHub Actions: validate deploy and run tests in a scratch org on every PR
- **SUP-018** Release notes, architecture diagram, demo GIF and final README

## Release 1.0 acceptance (from Marina)

- A customer can submit a case and receive a confirmation.
- A case about billing lands in the Billing queue; a technical case lands in Technical Support.
- A Premium customer case gets a 4-hour first-response milestone; Standard gets 8 hours.
- A missed milestone triggers an escalation and notifies the supervisor.
- A supervisor dashboard shows open cases by queue and SLA compliance.
