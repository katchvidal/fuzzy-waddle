[![Deploy Container Azure Instances](https://github.com/katchvidal/fuzzy-waddle/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/katchvidal/fuzzy-waddle/actions/workflows/CI.yml)

## Aplicacion de NextJS -> With Yarn

```
    * DockerFile
    * Docker-Compose.Yml
    * Deploy in Azure
    * Actions de Github Automatiza el Proceso de Deploy in Azure
```

# Variables de Ambiente en Github Secrets

```

    ENV SECRETS ->

    * ACTIONS_RUNNER_DEBUG
    * ACTIONS_STEP_DEBUG
    * AZURE_CREDENTIALS
    * DOCKER_PASSWORD
    * DOCKER_USERNAME
    * REGISTRY_USERNAME
    * REGISTRY_PASSWORD

```

# Azure RBAC -< IAM >

```
    * az ad sp create-for-rbac --name "<name for RBAC" --role contributor --scopes /subscriptions/<subscription-id>/resourceGroups/<Resource Gruop Name> --sdk-auth
    * Return a JSON with a Credentials
    * Paste the Json -> Inside Github -> Secrets -> AZURE_CREDENTIALS
    * TIP IF YOU WONT THIS WORKS YOU MAY NEED TO CREATE A NEW RESOURCE GRUOP I DONT KNOW WHY NOT WORK IN REPEATLY COMANDLINE RESOURCE GRUOP

```

# Create a Azure Registry

```
    You need to give github Secrets the following:
    * Registry Name
    * Registry Password
```
