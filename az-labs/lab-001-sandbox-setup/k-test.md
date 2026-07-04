# LAB-001 Knowledge Test: Sandbox Setup & CLI

Test your understanding of the concepts covered in this lab. Try to answer the questions before checking the explanations.

---

## ❓ Questions

### 1. In Azure's management hierarchy, what is the correct relationship model from top to bottom?
*   **A)** Resource Group -> Management Group -> Subscription -> Resource
*   **B)** Management Group -> Subscription -> Resource Group -> Resource
*   **C)** Subscription -> Management Group -> Resource Group -> Resource
*   **D)** Tenant -> Subscription -> Resource -> Resource Group

### 2. When writing a Bicep template to deploy a Resource Group (as done in this lab), why must you define `targetScope = 'subscription'` at the top of the file?
*   **A)** Bicep only supports resource groups at the subscription level.
*   **B)** Resource Groups cannot be created inside other Resource Groups; they reside directly inside a Subscription.
*   **C)** Subscriptions do not support Bicep unless specified.
*   **D)** It enables Bicep to bypass Azure Policy restrictions.

### 3. Which Azure CLI command is used to set a default resource group and location context so you don't have to specify them in subsequent CLI calls?
*   **A)** `az context set`
*   **B)** `az config set defaults.group=<name> defaults.location=<location>`
*   **C)** `az account set --subscription <id>`
*   **D)** `az default group create`

---

## 🔑 Answer Key & Explanations

<details>
<summary><b>Click to reveal Answer Key & Explanations</b></summary>

### 1. Correct Answer: B
*   **Explanation**: Microsoft Azure structures resources into four levels: **Management Groups** (organizational governance for multiple subscriptions), **Subscriptions** (billing/access boundaries), **Resource Groups** (logical grouping containers), and **Resources** (individual instances like VMs, SQL databases, or Virtual Networks).

### 2. Correct Answer: B
*   **Explanation**: By default, Bicep templates target a `resourceGroup` scope. However, because a Resource Group itself is a resource that resides directly under a Subscription scope, Bicep must be explicitly instructed that the target execution scope is the `subscription` level to deploy it.

### 3. Correct Answer: B
*   **Explanation**: The command `az config set defaults.group=<name> defaults.location=<location>` configures your local Azure CLI settings to automatically apply the specified resource group and region when running other commands, simplifying developer workflows. `az account set` changes the active subscription context.
</details>
