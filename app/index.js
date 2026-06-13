function getReleaseHealth() {
  return {
    service: "release-platform-demo",
    status: "healthy",
    checks: {
      qualityGate: "passed",
      securityGate: "passed",
      rollbackReady: true
    }
  };
}

if (require.main === module) {
  console.log(JSON.stringify(getReleaseHealth(), null, 2));
}

module.exports = { getReleaseHealth };