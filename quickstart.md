1. First login to Azure Devops and create a Personal Access Token (PAT) which will be used by the agent to communicate with your environment.

     #### [*https://dev.azure.com/{your_organisation_name}/_usersSettings/tokens*](#)

   - Ensure the token has the following scope access privileges:
     **Note**: *you my need to scroll down to the bottom of the scope list and click **Show more scopes** to reveal required scopes)*
   - Agent Pools: **Read and manage**
   - Deployment Groups: **Read and manage**
   - Copy and store the PAT code as it will be required later and is shown only once at the end of the PAT setup process

     [More info on creating PATs](https://learn.microsoft.com/en-us/azure/devops/organizations/accounts/use-personal-access-tokens-to-authenticate)

2. Next you will need to configure an **Azure Pipelines agent pool**
   
   - Click on **Project settings** > **Agent pools** (under Pipelines)*
   - Click **Add pool**, and select **Self-hosted** as the *Pool type*.
   - Give it a name.
   - Finally, tick the box **Grant access permission to all pipelines** under  **Pipeline permissions**

     [More info on creating Agent pools](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/pools-queues)
