const { getReleaseHealth } = require("./index");

test("release health should show the service is healthy", () => {
  const result = getReleaseHealth();

  expect(result.status).toBe("healthy");
  expect(result.checks.qualityGate).toBe("passed");
  expect(result.checks.securityGate).toBe("passed");
  expect(result.checks.rollbackReady).toBe(true);
});