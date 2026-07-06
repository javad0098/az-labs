# LAB-000 Knowledge Test: Subscription Management

Test your understanding of the concepts covered in this lab. Try to answer the questions before checking the explanations.

---

## ❓ Questions

### 1. What happens when you run a command like `az group create` without specifying a subscription ID or subscription name?
*   **A)** Azure CLI prompts you to select a subscription.
*   **B)** The command fails with a "subscription required" error.
*   **C)** The command runs against the currently set "default" active subscription in your CLI profile context.
*   **D)** The resource group is created globally across all subscriptions.

### 2. Can an Azure subscription belong to multiple Entra ID (Active Directory) tenants simultaneously?
*   **A)** Yes, a subscription can be trusted by up to 5 tenants.
*   **B)** No, a subscription has a 1:1 relationship with a tenant and can only trust a single Entra ID tenant at a time.
*   **C)** Yes, but only if they are in the same management group.
*   **D)** Yes, for backup purposes.

### 3. Which of the following is the correct way to switch your active subscription using its ID `ba80ff08-71ae-43c0-a935-4f028598dac7`?
*   **A)** `az login --subscription ba80ff08-71ae-43c0-a935-4f028598dac7`
*   **B)** `az config set subscription=ba80ff08-71ae-43c0-a935-4f028598dac7`
*   **C)** `az account set --subscription ba80ff08-71ae-43c0-a935-4f028598dac7`
*   **D)** `az context set ba80ff08-71ae-43c0-a935-4f028598dac7`

---

## 🔑 Answer Key & Explanations

<details>
<summary><b>Click to reveal Answer Key & Explanations</b></summary>

### 1. Correct Answer: C
*   **Explanation**: Azure CLI stores local configurations. The subscription marked as `isDefault: true` (the active subscription) is automatically targeted for all subsequent resource deployment operations unless you explicitly override it via the `--subscription` flag.

### 2. Correct Answer: B
*   **Explanation**: Every subscription is associated with a single directory tenant. It relies on that tenant for identity verification, RBAC permissions, and authentication. While you can transfer a subscription to another tenant, it can only trust one tenant at any point in time.

### 3. Correct Answer: C
*   **Explanation**: The `az account set` command switches your active CLI context. You can target either the subscription's name or its unique subscription ID. `az login` is only used to authenticate credentials, not to switch between already authorized contexts.
</details>
