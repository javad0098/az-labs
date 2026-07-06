# Azure Learning Roadmap: Summary & Progress Tracker

This document provides a summary of the 90-lab Azure learning roadmap designed for Java. It outlines the core focus, milestones, and progression of each phase to help you plan your daily schedule.

> [!TIP]
> **IaC & Automation from Day 1:** Every single lab (starting from Phase 1, Lab 1) uses **Bicep** templates and **PowerShell scripts (`deploy.ps1` / `destroy.ps1`)** for provisioning and tearing down resources. You will not need to do slow manual configuration in the Azure Portal, and you can destroy resources instantly to avoid any cloud costs.

---

## 📅 Suggested Learning Schedule
*   **Target Pace**: 3 to 4 labs per day.
*   **Total Duration**: ~22 to 30 days to finish all 90 labs.

---

## 🗺️ Phase-by-Phase Roadmap Summary

### Phase 1: Azure Foundations for AWS Veterans (Labs 0–15)
*   **Focus**: Essential Azure components, resource management, security, and networking—all deployed using **Bicep** and **PowerShell / Azure CLI**.
*   **AWS Mapping**: Transition VPC, EC2, IAM, S3, KMS, and CloudWatch knowledge.
*   **Key Services**: Subscriptions (LAB-000), VNets, NSGs, Azure Bastion, Microsoft Entra ID, Storage Accounts, Key Vault, Azure Policy.

*   **Milestone**: Deploy a secure, isolated VM accessed via Bastion with passwordless storage access.

### Phase 2: Azure Developer & Serverless Foundations (Labs 16–30)
*   **Focus**: Coding, database integrations, backend logs, and serverless compute.
*   **AWS Mapping**: Transition Lambda, DynamoDB, RDS, and X-Ray knowledge.
*   **Key Services**: Azure Functions (HTTP, Timer, Queue, Blob, Cosmos triggers), Azure SQL Serverless, Cosmos DB (NoSQL), App Insights, App Services, ACR, ACI.
*   **Milestone**: Develop microservices that trigger dynamically on database and storage changes, sending tracing logs to Application Insights.

### Phase 3: Azure Integration Services - Core (Labs 31–50)
*   **Focus**: Messaging queue networks, API gateways, and serverless workflows.
*   **AWS Mapping**: Transition SQS, SNS, EventBridge, API Gateway, and Step Functions knowledge.
*   **Key Services**: Service Bus (Queues/Topics), Event Grid (System/Custom), Event Hubs, Logic Apps Standard, API Management (APIM).
*   **Milestone**: Host serverless functions and database actions behind an APIM gateway, orchestrating data transactions using Logic Apps Standard.

### Phase 4: Infrastructure as Code (IaC) (Labs 51–65)
*   **Focus**: Declarative automation using Terraform and Bicep.
*   **AWS Mapping**: Transition CloudFormation and AWS-specific Terraform provider knowledge.
*   **Key Services**: Terraform (Azure RM provider, remote state in blobs, modules), Bicep templates (syntax, parameters, nested modules).
*   **Milestone**: Spin up your entire networking, database, and logic app stacks using single-command deployments.

### Phase 5: Azure DevOps & CI/CD Pipelines (Labs 66–80)
*   **Focus**: Production deployment pipelines, automated validation, and environments.
*   **AWS Mapping**: Transition CodePipeline, CodeBuild, and OIDC roles knowledge.
*   **Key Services**: GitHub Actions (OIDC login, terraform action, function deploy), Azure Pipelines (YAML syntax, multi-stage pipelines, staging slots).
*   **Milestone**: Configure a pipeline where PRs trigger terraform dry-runs and merges deploy to staging slots before swapping to production.

### Phase 6: Advanced Senior Integrator Scenarios (Labs 81–90)
*   **Focus**: Enterprise security, zero-trust architectures, hybrid clouds, and deep diagnostics.
*   **AWS Mapping**: Transition AWS PrivateLink, Direct Connect, and CloudWatch Logs Insights.
*   **Key Services**: Private Endpoints (Key Vault, Storage, SQL, Service Bus), Zero Public IP networks, Azure Front Door & WAF, Log Analytics & KQL, Hybrid Connections.
*   **Milestone**: Build a fully private, secured enterprise integration system routing traffic through Front Door and Private Endpoints, monitored by KQL dashboards.

---

## 🤖 Launching a Lab
To have the **Azure Lab Designer** agent generate any lab's workspace inside your `az-labs/` directory, simply ask:

> **"Yo bro, design me Lab [Number]"**

When triggered, the agent will create a folder containing:
*   `README.md`: The step-by-step hands-on guide.
*   `main.bicep`: The infrastructure template.
*   `deploy.ps1` & `destroy.ps1`: Scripts to easily create and destroy the lab.
*   `k-test.md`: A knowledge test with high-quality scenario questions and detailed explanations.

