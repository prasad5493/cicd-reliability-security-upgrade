# CI/CD Reliability and Security Upgrade

This project demonstrates a practical CI/CD reliability and security upgrade using GitHub Actions.

It is focused on improving release confidence through early quality checks, dependency validation, container security scanning, controlled deployment approvals, deployment evidence retention, and repeatable rollback workflows.

Why this project matters?
In real companies, releasing software without checks is risky. A bad release can break the application, expose security problems, or make it hard to understand what went wrong. This project reduces that risk by moving checks earlier and by making release and rollback steps repeatable.

## Objectives

- Run quality checks before deployment
- Detect dependency and container security issues early
- Build and scan Docker images before release
- Use controlled staging and production deployment gates
- Retain deployment evidence as workflow artifacts
- Provide a repeatable rollback workflow

## Architecture

```text
Pull Request / Push
        |
        v
Quality Checks
        |
        v
Dependency Review
        |
        v
Docker Build
        |
        v
Container Security Scan
        |
        v
Evidence Artifact



