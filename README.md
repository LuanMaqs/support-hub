# Support Hub

Salesforce Service Cloud case management with SLA tracking, built as a realistic engineering project for the fictional company **Nimbus Cloud**.

> **Status:** in development (Sprint 0). See the [roadmap](docs/01-roadmap.md).

## The problem

Support ran on a legacy ticketing tool: slow first responses, wrongly routed tickets and no live view of SLA breaches. Support Hub moves it to Service Cloud. Read the full [scenario](docs/00-scenario.md).

## What it will do

- Capture cases from web forms and email
- Route cases to the right queue by category
- Track first-response SLAs per customer plan with entitlements and milestones
- Escalate breaches automatically
- Give agents a Service Console with customer context
- Give supervisors live dashboards
- Classify and summarize new cases with AI through n8n (stretch)

## Tech

Salesforce Service Cloud · Apex · Lightning Web Components · Flow · Salesforce DX · GitHub Actions · n8n

## Project structure

```
force-app/          Salesforce metadata (source of truth)
config/             Scratch org definition
docs/               Scenario, roadmap, backlog, ADRs
.github/            CI, PR and issue templates
```

## Getting started

1. Install the [Salesforce CLI](https://developer.salesforce.com/tools/salesforcecli) and VS Code with the Salesforce extension pack
2. Authorize your Dev Hub: `sf org login web --set-default-dev-hub`
3. Create a scratch org: `sf org create scratch -f config/project-scratch-def.json -a support-hub -d`
4. Deploy: `sf project deploy start`
5. Run tests: `sf apex run test --code-coverage --result-format human`

## Contributing

Work follows a ticket-per-branch flow. See [CONTRIBUTING.md](CONTRIBUTING.md).

## Author

**Luan Marques** · [LinkedIn](https://www.linkedin.com/in/luanmarques006/) · [GitHub](https://github.com/LuanMaqs)
