# Sprint 1: Intake and SLA

**Sprint goal:** customers get automatic acknowledgement, SLAs are tracked, and agents work from one console.

---

## SUP-006: Entitlements and SLA milestones
**Type:** Story · **Estimate:** 5h

**Story:** As Helen, I want SLAs enforced per customer plan so that Premium customers get faster responses.

**Acceptance criteria**
- [ ] Entitlement management enabled
- [ ] Entitlement process with milestone **First Response**: 4h for Premium, 8h for Standard
- [ ] Business hours defined (Mon-Fri, 08:00-18:00) and applied
- [ ] Milestone actions: warning at 75% of the time, violation action when missed
- [ ] Entitlements created for two sample accounts (Premium and Standard)
- [ ] Verified by creating cases and watching the milestone timer

**Learning goals:** entitlements, entitlement processes, milestones, business hours, milestone actions.

---

## SUP-007: Auto-acknowledgement Flow
**Type:** Story · **Estimate:** 3h

**Story:** As a customer, I want an immediate confirmation so that I know my case was received.

**Acceptance criteria**
- [ ] Record-triggered Flow on Case (after insert) sends an email template with the case number
- [ ] Template is stored in source control
- [ ] Flow handles bulk inserts (test with a data load of 50 cases)
- [ ] Flow has a fault path that logs the error instead of failing silently

**Learning goals:** record-triggered Flows, before vs after save, bulkification in Flow, fault handling, email alerts vs send-email action.

---

## SUP-008: Escalation Flow for SLA breaches
**Type:** Story · **Estimate:** 4h

**Story:** As a supervisor, I want to be told when a case breaches SLA so that I can intervene.

**Acceptance criteria**
- [ ] When a milestone is violated, the case is marked `IsEscalated`
- [ ] Priority is raised one level
- [ ] A task is created for the supervisor and a notification is sent
- [ ] Design decision recorded as an ADR: why Flow here and not Apex

**Learning goals:** declarative vs programmatic trade-offs, escalation rules, custom notifications.

---

## SUP-009: Service Console app
**Type:** Story · **Estimate:** 4h

**Story:** As an agent, I want a single workspace so that I can handle cases without switching screens.

**Acceptance criteria**
- [ ] Lightning console app "Support Hub" with Cases, Accounts, Contacts as navigation items
- [ ] Case record page built with Lightning App Builder: highlights panel, milestone tracker, related cases, knowledge component
- [ ] Case list views: My Open Cases, Escalated, Unassigned in Triage
- [ ] Utility bar with history and notes
- [ ] Screenshot of the final layout added to the PR

**Learning goals:** Lightning apps, console navigation, record pages, dynamic forms, list views.

---

## SUP-010: Supervisor dashboard
**Type:** Story · **Estimate:** 4h

**Story:** As Helen, I want live metrics so that I do not wait for the monthly report.

**Acceptance criteria**
- [ ] Report: open cases by queue and severity
- [ ] Report: SLA compliance (met vs violated milestones) for the last 30 days
- [ ] Report: average age of open cases by owner
- [ ] Dashboard "Support Overview" combining the three with a filter by category
- [ ] Reports and dashboard are in a shared folder visible to supervisors only

**Learning goals:** report types, custom report types, filters, dashboard components, folder sharing.
