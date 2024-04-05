# Cosmos Gaia

## Dockerfile to run Cosmos Gaia v14.2.0 in container

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
    
## Kubernetes StatefulSet to run the above, using persistent volume claims and resource limits.

Created `sts.yaml` file that provisioned to use an `image` that was created in previous task.

    https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/

Started the minikube:

    minikube start

Created `sts.yaml` file and ran command below to apply the StatefulSet configuration defined in sts.yaml

    kubectl apply -f sts.yaml

<img width="1076" alt="Screenshot 2024-04-05 at 2 07 00 PM" src="https://github.com/JAABO/CosmosGaia/assets/17276789/754d7500-81fc-4ec8-9bd2-c1872f7c9cd2">


## Script kiddies: Source or come up with a text manipulation problem and solve it with at least two of awk, sed, tr and / or grep.

Created `sort.sh` file that reads input.txt file in the directory using `grep` , `sort` and `awk`.
- it splits text into array of lines
- sort the lines in alphavetical order
- join line array into a string
- echo the result to the console

## Script grown-ups: Solve the problem in question 3 using any programming language you like.

Created `sort.py` file  which is python script for sorting the `input.txt` file.
- read input text from file
- split input text into an array of lines
- sort lines in alphabetical order
- join line array into a string and prints.
