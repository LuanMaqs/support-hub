# The scenario

> Nimbus Cloud is a fictional company created for this project. Any resemblance to a real company is coincidental.

## The company

**Nimbus Cloud** is a global cloud infrastructure and developer-tools company with about 40,000 employees and 2 million customers, from solo developers to large enterprises. Customers buy compute, storage and managed databases.

## The problem

Support runs on a legacy ticketing tool plus shared mailboxes. In the last quarter:

- First response time averaged **11 hours** against a promise of 4 hours for paid plans.
- About **18% of tickets** were routed to the wrong team and re-assigned at least once.
- Support leadership has **no reliable view** of SLA breaches until the monthly report.
- Enterprise customers complain that agents "have no context" about their previous cases.

The company decided to move support to **Salesforce Service Cloud**. You joined the **Support Platform team** to build the first release, called **Support Hub**.

## The team (fictional)

| Person | Role | What they care about |
|---|---|---|
| **Marina Alves** | Product Manager | Business outcomes, scope, deadlines |
| **Rafael Costa** | Tech Lead (Salesforce) | Code quality, architecture, reviews your PRs |
| **Helen Park** | Head of Support Operations | Agents' daily workflow, SLA numbers |
| **Dev (you)** | Salesforce Admin and Developer | Delivering tickets end to end |

## Goals of release 1.0

1. Customers open cases by web form or email and get an automatic confirmation.
2. Cases are routed to the right queue by category.
3. SLA is tracked with entitlements and milestones, with automatic escalation.
4. Agents work from a Service Console that shows customer context at a glance.
5. Supervisors see live SLA and workload dashboards.
6. An AI step classifies new cases and drafts a summary (stretch goal).

## Ways of working

- **Sprints of one week.** Each sprint has a goal and a set of tickets.
- **Every ticket is a GitHub issue** with acceptance criteria (`docs/backlog/`).
- **Branch per ticket**: `feature/SUP-012-short-name`. Never commit to `main`.
- **Pull requests only.** Fill the template. Rafael (the reviewer) is you reading your own diff with fresh eyes: wait an hour, then review it as if someone else wrote it.
- **Conventional commits**: `feat(case): add severity picklist (SUP-002)`.
- **Squash merge** to `main`. `main` must always be deployable.
- **Decisions are written down** as ADRs in `docs/adr/`.

## Definition of Done

A ticket is done only when:

- The acceptance criteria are verified and demonstrated (screenshot or GIF in the PR).
- Code has tests and meets the coverage target; Flows have a documented test plan.
- Metadata deploys cleanly to a fresh scratch org.
- Documentation is updated.
- The PR is merged and the issue is closed.

## How to learn from this project

Each ticket has **Learning goals**. Before you build, read about the concepts. After you build, write 3-5 lines in the PR on *what you learned and what you would do differently*. Those notes become your interview answers.
