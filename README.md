# Terraform Demo Code


## Toolchain Setup Instructions
The following instructions will walk you through setting up the essential tools for terraform development.  

1. Terraform
    1. Install Terraform [from here](https://developer.hashicorp.com/terraform/install?ajs_aid=dd109969-1f79-4167-9dba-06915e35a3fd&product_intent=terraform)
1. git
    1. Install the git CLI according to [from here](https://gitforwindows.org/)
    1. Log into Github according to the following:
    1. Download the hackathon repo with the following command:
        ```bash
        git clone git@github.com:InvoltaLLC/tf-demo-20240122.git
        ```
        > Note: The above command will create a directory named 'tf-demo-20240122' in the current directory
1. Visual Studio Code
    1. Install VSCode according to [from here](https://code.visualstudio.com/download)
    1. Launch VSCode
    1. Open the repo by selecting *File -> Open Folder...* in VSCode and selecting the *tf-demo-20240122* folder created during git setup

## GitHub Actions Setup
A pipeline is included to apply this terraform configuration via Terraform Cloud.  
> The pipeline is currently configured to be manually executed through GitHub.  To automate execution during commits/pulls, add the desired triggers to the ```on:``` section of ```.github/workflows/tfdeploy.yaml```

To ensure this pipeline is able to authenticate to your Terraform Cloud organization, the following procedure must be followed prior to running the pipeline.
1. Generate a base 64 encoded json document containing credentials to access your environment.  From the supplied devcontainer, this can be accomplished with the following commands:
    ```bash 
    tf login
    # provide credentials when prompted

    cat ~/.terraform.d/credentials.tfrc.json | base64
    ```
1. Using the output of the above supplied command, create a GitHub repository secret named ```TF_API_TOKEN```.  Instructions on creating repo secrets can be found at [this link](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions#creating-secrets-for-a-repository)
> Note: Organization or Environment secrets may also be used.

## Terraform Cloud Setup
> Coming soon...


