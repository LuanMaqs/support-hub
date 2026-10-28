# ADR-0002: Route cases with an assignment rule

- **Status:** accepted
- **Date:** 2026-10-28

## Context
New cases must reach the right team. Cases come from the UI, email and the web, and
`Category__c` is not always filled in (for example, in email).

## Options considered
1. **Assignment rule**: native, easy to audit, runs for Web-to-Case and Email-to-Case.
2. **Record-triggered Flow**: visible logic, but it would overlap with the rule.
3. **Apex**: flexible, but too heavy for simple category routing.

## Decision
Use an assignment rule. A Triage queue receives cases that need classification
(`Feature Request` and any case without a matching category).

## Consequences
- Manual cases only route when "Assign using active assignment rules" is used.
- Complex routing may move to Flow or Apex later.