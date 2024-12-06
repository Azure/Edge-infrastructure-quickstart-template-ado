# Upgrade your infrastructure repository

This document describes how to upgrade your existing infrastructure repository to the latest version.

* Add the latest version of the template repository as the remote upstream
```bash
git remote add upstream https://github.com/Azure/Edge-infrastructure-quickstart-template-ado.git
```
* Fetch and merge the latest changes from the template repository
```bash
git fetch upstream
git merge upstream/main
```

## Resolve merge conflicts in `.pipelines`
* You are likely to encounter conflicts for files in `.pipelines\templates`, please keep these files the same as upstream.
* A new file `.pipelines\config-variables.yml` is added to configuring your repository. Please follow upstream as the base, and fill in the required values following [Config Variables](./Config-Variables.md).
* For conflicts in `deploy-infra.yml` and `drift.yml`, please follow upstream as a startpoint, but adjust the file based on your stages following [Customize Stages](./Customize-Stages.md).

## Next Step

[Go back to home page](../README.md)