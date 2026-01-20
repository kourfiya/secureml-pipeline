#!/usr/bin/env bash
set -e

echo "🚀 Creating full backlog of Epics and Stories (labels already exist)..."

# ------------------------
# EPIC 1
# ------------------------
gh issue create --title "EPIC 1 – Repository & Baseline Setup" \
  --label "type:epic,epic:repo-baseline" \
  --body "Goal: Set up repository structure and baseline ML pipeline."
echo "✅ EPIC 1 created"

gh issue create --title "STORY 1.1 – Initialize Project Repository" \
  --label "type:story,epic:repo-baseline" \
  --body "**Epic:** #1
Tasks:
- Create repo structure (/ml, /api, /infra, /ci)
- Add .gitignore
- Add base README
- Add sample dataset
Acceptance Criteria:
- Repo structure is clean and documented
- Project runs locally"

gh issue create --title "STORY 1.2 – Baseline ML Model" \
  --label "type:story,epic:repo-baseline,epic:mlops" \
  --body "**Epic:** #1
Tasks:
- Choose problem (classification/regression)
- Implement training script
- Save model artifact
- Log baseline metrics
Acceptance Criteria:
- Model trains successfully
- Metrics are reproducible"

# ------------------------
# EPIC 2
# ------------------------
gh issue create --title "EPIC 2 – CI Security Gates (Shift Left)" \
  --label "type:epic,epic:ci-security" \
  --body "Goal: Shift security left by integrating automated security gates into CI/CD."
echo "✅ EPIC 2 created"

gh issue create --title "STORY 2.1 – Static Application Security Testing (SAST)" \
  --label "type:story,epic:ci-security" \
  --body "**Epic:** #2
Tasks:
- Integrate Semgrep
- Define custom security rules
- Fail pipeline on High/Critical issues
Acceptance Criteria:
- Pipeline blocks insecure code"

gh issue create --title "STORY 2.2 – Dependency & Supply Chain Scanning" \
  --label "type:story,epic:ci-security" \
  --body "**Epic:** #2
Tasks:
- Add dependency scanning
- Generate vulnerability report
- Enforce severity threshold
Acceptance Criteria:
- Vulnerable dependencies block build"

gh issue create --title "STORY 2.3 – Secrets Detection" \
  --label "type:story,epic:ci-security" \
  --body "**Epic:** #2
Tasks:
- Integrate Gitleaks
- Test with fake secret
- Block merge on detection
Acceptance Criteria:
- Secrets are never committed"

# ------------------------
# EPIC 3 – MLOps Lifecycle
# ------------------------
gh issue create --title "EPIC 3 – MLOps Lifecycle Automation" \
  --label "type:epic,epic:mlops" \
  --body "Goal: Automate ML lifecycle including experiments, validation, and quality gates."
echo "✅ EPIC 3 created"

gh issue create --title "STORY 3.1 – Experiment Tracking with MLflow" \
  --label "type:story,epic:mlops" \
  --body "**Epic:** #3
Tasks:
- Integrate MLflow
- Track parameters, metrics, artifacts
- Store models in registry
Acceptance Criteria:
- Experiments visible in MLflow UI"

gh issue create --title "STORY 3.2 – Data Validation & Drift Detection" \
  --label "type:story,epic:mlops" \
  --body "**Epic:** #3
Tasks:
- Implement data validation
- Add drift detection
- Define drift thresholds
Acceptance Criteria:
- Drift detection triggers alerts"

gh issue create --title "STORY 3.3 – Model Quality Gates" \
  --label "type:story,epic:mlops" \
  --body "**Epic:** #3
Tasks:
- Define accuracy thresholds
- Fail pipeline on low performance
- Prevent deployment of bad models
Acceptance Criteria:
- Only approved models deploy"

# ------------------------
# EPIC 4 – Containerization & Image Security
# ------------------------
gh issue create --title "EPIC 4 – Containerization & Image Security" \
  --label "type:epic,epic:container-security" \
  --body "Goal: Containerize ML API and secure images."
echo "✅ EPIC 4 created"

gh issue create --title "STORY 4.1 – Containerize ML API" \
  --label "type:story,epic:container-security" \
  --body "**Epic:** #4
Tasks:
- Build FastAPI/Flask app
- Add Dockerfile
- Run locally
Acceptance Criteria:
- API serves predictions"

gh issue create --title "STORY 4.2 – Container Vulnerability Scanning" \
  --label "type:story,epic:container-security" \
  --body "**Epic:** #4
Tasks:
- Integrate Trivy
- Scan images in CI
- Block High/Critical CVEs
Acceptance Criteria:
- Vulnerable images fail pipeline"

# ------------------------
# EPIC 5 – Kubernetes Deployment
# ------------------------
gh issue create --title "EPIC 5 – Secure Deployment to Kubernetes" \
  --label "type:epic,epic:kubernetes" \
  --body "Goal: Deploy ML API to Kubernetes with security hardening."
echo "✅ EPIC 5 created"

gh issue create --title "STORY 5.1 – Kubernetes Deployment" \
  --label "type:story,epic:kubernetes" \
  --body "**Epic:** #5
Tasks:
- Write deployment manifests
- Expose service
- Deploy to cluster
Acceptance Criteria:
- API reachable via service"

gh issue create --title "STORY 5.2 – Kubernetes Security Hardening" \
  --label "type:story,epic:kubernetes" \
  --body "**Epic:** #5
Tasks:
- Apply Pod Security Standards
- Create RBAC roles
- Apply NetworkPolicies
Acceptance Criteria:
- Least-privilege enforced"

# ------------------------
# EPIC 6 – Runtime Security & DAST
# ------------------------
gh issue create --title "EPIC 6 – Runtime Security & DAST" \
  --label "type:epic,epic:runtime-security" \
  --body "Goal: Add dynamic security testing and runtime monitoring."
echo "✅ EPIC 6 created"

gh issue create --title "STORY 6.1 – Dynamic Application Security Testing (DAST)" \
  --label "type:story,epic:runtime-security" \
  --body "**Epic:** #6
Tasks:
- Deploy OWASP ZAP
- Scan ML API
- Fail pipeline on findings
Acceptance Criteria:
- DAST integrated successfully"

gh issue create --title "STORY 6.2 – Runtime Monitoring" \
  --label "type:story,epic:runtime-security" \
  --body "**Epic:** #6
Tasks:
- Centralize logs
- Monitor errors & anomalies
- Create alert rules
Acceptance Criteria:
- Alerts trigger correctly"

# ------------------------
# EPIC 7 – Rollback & Resilience
# ------------------------
gh issue create --title "EPIC 7 – Rollback, Resilience & Automation" \
  --label "type:epic,epic:resilience" \
  --body "Goal: Implement automated rollback and resilience tests."
echo "✅ EPIC 7 created"

gh issue create --title "STORY 7.1 – Automated Rollback" \
  --label "type:story,epic:resilience" \
  --body "**Epic:** #7
Tasks:
- Track stable model versions
- Implement rollback logic
- Test failure scenario
Acceptance Criteria:
- System recovers automatically"

gh issue create --title "STORY 7.2 – Incident Simulation" \
  --label "type:story,epic:resilience" \
  --body "**Epic:** #7
Tasks:
- Inject vulnerable dependency
- Simulate data drift
- Document response
Acceptance Criteria:
- Pipeline responds as designed"

# ------------------------
# EPIC 8 – Documentation & Portfolio Polish
# ------------------------
gh issue create --title "EPIC 8 – Documentation & Portfolio Polish" \
  --label "type:epic,epic:documentation" \
  --body "Goal: Create recruiter-ready README and architecture diagrams."
echo "✅ EPIC 8 created"

gh issue create --title "STORY 8.1 – Architecture & Threat Model" \
  --label "type:story,epic:documentation" \
  --body "**Epic:** #8
Tasks:
- Draw architecture diagram
- Write ML threat model
- Map controls to threats
Acceptance Criteria:
- Security reasoning is clear"

gh issue create --title "STORY 8.2 – Portfolio-Ready README" \
  --label "type:story,epic:documentation" \
  --body "**Epic:** #8
Tasks:
- Add screenshots
- Add demo instructions
- Add learning outcomes
Acceptance Criteria:
- Repo is recruiter-ready"

