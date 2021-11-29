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

    VARIABLE DE AMBIENTE SECRETS ->

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
    * az ad sp create-for-rbac --name "githubaction" --role contributor --scopes /subscriptions/a8868927-214e-4df6-b328-c58e212825bf/resourceGroups/test --sdk-auth
    * Return a JSON with a Credentials
    * -> Secret -> AZURE_CREDENTIALS

```
