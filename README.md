# CosmosGaia

1. Created Dockerfile with 2 stages.
    Cosmos Hub - Gaia github repository release v14.2.0 only compatible with golang v1.20.
    installed dependencies
    cloned the repository

2. Built the image and gave it a tag: v14.2.0
3. Pushed the  image to docker hub using this command: `docker push jakeboldbaatar/gaia:v14.2.0`

# K8s FTW: 

Created `sts.yaml` file that provisioned to use image that was created in previous task.




