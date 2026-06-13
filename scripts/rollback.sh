#!/usr/bin/env bash
set -euo pipefail

ENVIRONMENT="${1:-}"
ROLLBACK_VERSION="${2:-}"

if [[ -z "$ENVIRONMENT" || -z "$ROLLBACK_VERSION" ]]; then
  echo "Usage: ./scripts/rollback.sh <staging|production> <rollback-version>"
  exit 1
fi

TARGET_FILE="deployment/${ENVIRONMENT}/current-version.txt"

if [[ ! -f "$TARGET_FILE" ]]; then
  echo "Invalid environment: $ENVIRONMENT"
  exit 1
fi

CURRENT_VERSION="$(cat "$TARGET_FILE")"

echo "$ROLLBACK_VERSION" > "$TARGET_FILE"

mkdir -p evidence

cat > "evidence/rollback-${ENVIRONMENT}-${ROLLBACK_VERSION}.txt" <<EOF
Rollback Evidence
Environment: ${ENVIRONMENT}
Previous Version: ${CURRENT_VERSION}
Rolled Back To: ${ROLLBACK_VERSION}
Rollback Time: $(date -u +"%Y-%m-%dT%H:%M:%SZ")
Rollback Triggered By: GitHub Actions
Reason: Manual rollback workflow
EOF

echo "Rollback completed for ${ENVIRONMENT}"
echo "Previous version: ${CURRENT_VERSION}"
echo "Rolled back to: ${ROLLBACK_VERSION}"