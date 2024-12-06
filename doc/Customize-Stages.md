# Customize Stages

Open `.pipelines/deploy-infra.yml`. The initial version is

```yml
stages:
  - stage: dev
    jobs:
    - template: templates/list-and-run.yml
      parameters:
        directory: dev
  - stage: qa
    jobs:
    - template: templates/list-and-run.yml
      parameters:
        directory: qa
  - stage: prod
    jobs:
    - template: templates/list-and-run.yml
      parameters:
        directory: prod
```

You can add, remove or rearrange the sequence following the sample. For instance, to add a canary stage, create `canary` folder first, add a `.gitignore` file in the folder and edit `.pipelines/deploy-infra.yml` to the following.

```yml
stages:
  - stage: dev
    jobs:
    - template: templates/list-and-run.yml
      parameters:
        directory: dev
  - stage: qa
    jobs:
    - template: templates/list-and-run.yml
      parameters:
        directory: qa
  - stage: canary
    jobs:
    - template: templates/list-and-run.yml
      parameters:
        directory: canary
  - stage: prod
    jobs:
    - template: templates/list-and-run.yml
      parameters:
        directory: prod
```

## Next Step

[Go back to home page](../README.md)

Learn more:

- About [adding your first site with static templates](./Add-The-First-Site.md)
- About [troubleshooting](./TroubleShooting.md)
- About [enabling arc extensions for all sites](../README.md#enable-opt-in-features-for-all-sites)