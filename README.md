# CI/CD Reliability and Security Upgrade

This project demonstrates a practical CI/CD reliability and security upgrade using GitHub Actions.

It is focused on improving release confidence through early quality checks, dependency validation, container security scanning, controlled deployment approvals, deployment evidence retention, and repeatable rollback workflows.

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


## Release Flow 

Manual Release Trigger
        |
        v
Pre-release Validation
        |
        v
Deploy to Staging
        |
        v
Production Approval
        |
        v
Deploy to Production
        |
        v
Deployment Evidence

## Rollback Flow

Manual Rollback Trigger
        |
        v
Select Environment
        |
        v
Select Previous Version
        |
        v
Rollback Execution
        |
        v
Rollback Evidence
