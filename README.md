# Azure Pipelines Docker Agent
To build your code or deploy your software using Azure Pipelines, you need at least one agent. As you add more code and people, you'll eventually need more.

When your pipeline runs, the system begins one or more jobs. An agent is computing infrastructure with installed agent software that runs one job at a time.

This will build a self hosted Azure DevOps (ADO) agent container running under Docker

You may need to configure your Azure DevOps environment and I have included some brief instructions to do that [here](./quickstart.md)

1. Create an .env file with the values for your environment using the template below
  ````
  TARGETARCH=linux-x64
  AZP_URL=https://dev.azure.com/<org_name>
  AZP_TOKEN=<personal_access_token>
  AZP_AGENT_NAME=azp-docker-agent
  AZP_POOL=self-hosted-pool
  TZ=Europe/London
  DOCKER_DATA=<pipeline_local_storage_path>
  ````
2. Then enter `docker-compose build`
3. Finally enter `docker-compose up -d`
