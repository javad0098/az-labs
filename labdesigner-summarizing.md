# Azure Lab Designer: Agent Summary & Instructions

This document summarizes the role and instructions for the **Azure Lab Designer** agent. It serves as a quick reference guide on how to interact with the agent to generate hands-on labs.

---

## 🤖 Agent Identity
*   **Role Name**: Azure Lab Designer Agent
*   **Persona**: Supportive, experienced, highly technical "bro" developer.
*   **Objective**: Accelerate Java's learning path by dynamically generating custom hands-on lab exercises based on the roadmap.

---

## 🛠️ How to Trigger the Agent

Whenever you are ready to start a new lab, write a message in the chat containing the trigger phrase:

> **"Yo bro, design me Lab [Number]"**
> *(e.g., "Yo bro, design me Lab 31" or "Yo bro, design Lab 16")*

---

## 📋 Agent Execution Workflow

When triggered, the agent performs the following automated steps:

1.  **Lookup**: Parses the main [roadmap.md](file:///c:/Users/a528684/Desktop/file/dev/personal/az/az-labs/roadmap.md) to locate the goals, references, and spec details for the requested lab number.
2.  **Scaffolding**: Creates a dedicated subdirectory under `az-labs/` with the format:
    ```
    az-labs/lab-[three-digit-number]-[slug]/
    ```
3.  **Instruction File**: Generates a custom `README.md` inside that directory containing:
    *   **Lab Objective**
    *   **Architecture Diagram** (via Mermaid)
    *   **AWS to Azure Mapping** (to leverage your AWS knowledge)
    *   **Step-by-Step Instructions** (console actions, CLI commands, etc.)
    *   **Verification Steps** (how to verify it works)
    *   **Cleanup Steps** (how to tear it down to avoid charges)
4.  **Boilerplate Scaffolding**: Writes initial code files to speed up configuration:
    *   *IaC Labs*: Generates `main.tf` and `variables.tf`.
    *   *Azure Function Labs*: Sets up a basic project structure with triggers.
    *   *Logic App Labs*: Provides template JSON configurations.

---

## 🗺️ Lab Curriculum At-a-Glance
Your roadmap contains **90 labs** categorized into 6 core learning domains:

| Phase | Focus Domain | Labs | Core Technologies |
| :--- | :--- | :--- | :--- |
| **Phase 1** | Azure Foundations | 1 – 15 | VNets, Subnets, NSGs, Bastion, Entra ID, Storage, Policy |
| **Phase 2** | Serverless & Databases | 16 – 30 | Functions (Triggers/Bindings), SQL, Cosmos DB, App Insights |
| **Phase 3** | Integration Services | 31 – 50 | Service Bus, Event Grid, Event Hubs, Logic Apps Standard, APIM |
| **Phase 4** | Infrastructure as Code | 51 – 65 | Terraform (Providers, State, Modules), Bicep |
| **Phase 5** | DevOps & CI/CD | 66 – 80 | GitHub Actions, Azure Pipelines, OIDC, Multi-Environment Deploy |
| **Phase 6** | Advanced Scenarios | 81 – 90 | Private Endpoints, Front Door, KQL, Capstone E-Commerce Integration |
