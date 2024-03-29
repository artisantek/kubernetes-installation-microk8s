# KUBERNETES INSTALLATION STEPS

## STEP 1: MASTER NODE INSTALLATION

- Create EC2 Instance from UBUNTU AMI with type t2.medium (2 core CPU and 4GB Ram)
- Github URL: https://github.com/artisantek/kubernetes-installation-microk8s

### COMMANDS:
```
git clone https://github.com/artisantek/kubernetes-installation-microk8s.git
cd kubernetes-installation-microk8s
bash install-microk8s.sh
```

## STEP 2: Worker NODE INSTALLATION

- Create EC2 Instance from UBUNTU AMI with type t2.micro (1 core CPU and 1GB Ram)
- Github URL: https://github.com/artisantek/kubernetes-installation-microk8s

### COMMANDS:
```
git clone https://github.com/artisantek/kubernetes-installation-microk8s.git
cd kubernetes-installation-microk8s
bash install-microk8s.sh
```

## STEP 3: Login back to Master instance created in STEP 1

### Generate microk8s join command

```
microk8s add-node
```
>Note: Copy the command with --worker flag, we need to run this command on worker nodes

## STEP 4: Initialize WORKER NODES [ssh to worker nodes created from STEP 2]

```
microk8s join <TOKEN> --worker [Command from STEP 3] --> To connect worker node to Master
```

## STEP 5: Login back to Master instance created in STEP 1

```
mkctl get nodes
```
