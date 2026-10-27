# Contributing

## Flow

1. Pick a ticket from `docs/backlog/` and open (or find) its GitHub issue
2. Branch from `main`: `feature/SUP-012-short-name`, `fix/...` or `chore/...`
3. Make small commits using [Conventional Commits](https://www.conventionalcommits.org/): `feat(case): add severity picklist (SUP-002)`
4. Open a pull request using the template and link the issue (`Closes #N`)
5. Wait for CI, review your own diff, address comments, then **squash merge**

## Rules

- Never commit directly to `main`
- No hardcoded IDs, no SOQL or DML inside loops, always bulkify
- Every Apex class has tests; target 90%+ coverage (75% is the platform minimum)
- Prefer declarative tools when they solve the problem; document the choice in an ADR when it is not obvious
- Never commit credentials, auth URLs or customer data

## Commit types

`feat`, `fix`, `docs`, `test`, `refactor`, `chore`, `ci`
