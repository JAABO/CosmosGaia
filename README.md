# CosmosGaia

======================================================================================================

Created Dockerfile with 2 stages.

- Cosmos Hub - Gaia github repository release v14.2.0 only compatible with golang v1.20.
    
- installed dependencies
    
- cloned the repository

- Built the image and gave it a tag: v14.2.0

      docker build

Pushed the image to the Docker hub 

    docker push 

Ref:

Installing Gaia | Cosmos Hub:

    https://hub.cosmos.network/getting-started/installation#build-requirements

How to Install Go:

    https://tecadmin.net/how-to-install-go-on-ubuntu-20-04/    

Cosmos:
    
    https://cosmos.network/
    
# K8s FTW: 

Created `sts.yaml` file that provisioned to use an `image` that was created in previous task.

    https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/




