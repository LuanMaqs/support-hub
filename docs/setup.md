# Local setup

## Prerequisites
- Salesforce CLI (`sf --version`: 2.130.9 and node v22.22.2)
- VS Code with the Salesforce Extension Pack
- A Developer Edition org with Dev Hub enabled

## Steps
1. Clone the repo and open the folder that contains `sfdx-project.json`
2. Authorize the Dev Hub:
   `sf org login web --set-default-dev-hub --alias devhub`
3. Create the scratch org:
   `sf org create scratch -f config/project-scratch-def.json -a support-hub -d`
4. Open it: `sf org open`

## Key concepts
- The Dev Hub only creates scratch orgs. All development happens in the scratch org.
- Scratch orgs are temporary, so the repository is the source of truth.
- Use `sf project retrieve start` to pull changes into source control.

## Problems I hit and how I solved them
| Problem | Cause | Fix |
|---|---|---|
| `NoDefaultDevHubError` | Org authorized without the Dev Hub flag | Re-authorized with `--set-default-dev-hub` |
| `ProblemDeployingSettings` (caseSettings) | Invalid settings block in the scratch definition | Removed the block |
| `noSourceTracking` on retrieve | Command ran against the Dev Hub, which has no source tracking | Ran it against the scratch org |