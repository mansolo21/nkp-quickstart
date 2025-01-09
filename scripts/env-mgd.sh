# Contenido del fichero env.sh
export CLUSTER_NAME="nkp-test" # Name of the Kubernetes cluster 
export NUTANIX_PC_FQDN_ENDPOINT_WITH_PORT="https://10.48.71.250:9440" # Nutanix Prism Central endpoint URL with port 
export CONTROL_PLANE_IP="10.48.111.10" # IP address for the Kubernetes control plane 
export IMAGE_NAME="nkp-rocky-9.5-release-1.30.5-20241125163629.qcow2" # Name of the VM image to use for cluster nodes 
export PRISM_ELEMENT_CLUSTER_NAME="Pluto-1" # Name of the Nutanix Prism Element cluster 
export SUBNET_NAME="Secondary" # Name of the subnet to use for cluster nodes 
#export PROJECT_NAME="Default" # Name of the Nutanix project (make sure project exists, is NOT mandatory) 
export CONTROL_PLANE_REPLICAS="1" # Number of control plane replicas 
export CONTROL_PLANE_VCPUS="4" # Number of vCPUs for control plane nodes 
export CONTROL_PLANE_CORES_PER_VCPU="1" # Number of cores per vCPU for control plane nodes 
export CONTROL_PLANE_MEMORY_GIB="8" # Memory in GiB for control plane nodes 
export WORKER_REPLICAS="3" # Number of worker node replicas 
export WORKER_VCPUS="4" # Number of vCPUs for worker nodes 
export WORKER_CORES_PER_VCPU="1" # Number of cores per vCPU for worker nodes 
export WORKER_MEMORY_GIB="16" # Memory in GiB for worker nodes 
export NUTANIX_STORAGE_CONTAINER_NAME="default-container-88267" # Name of the Nutanix storage container 
export CSI_FILESYSTEM="ext4" # Filesystem type for CSI volumes 
export CSI_HYPERVISOR_ATTACHED="true" # Whether to use hypervisor-attached volumes for CSI 
export LB_IP_RANGE="10.48.111.11-10.48.111.15" # IP range for load balancer services 
export SSH_KEY_FILE="/home/nutanix/.ssh/id_rsa.pub" # Path to the SSH public key file 
export NUTANIX_USER="admin" # Nutanix PrismCentral username (left blank for security) 
export NUTANIX_PASSWORD="nx2Tech536!" # Nutanix PrismCentral password (left blank for security) 
export REGISTRY_URL="https://10.48.71.208/library" # URL for the private container registry "http://registry_IP:5000" in docker use case 
export REGISTRY_USERNAME="admin" # Username for authenticating with the private registry (left blank for security) 
export REGISTRY_PASSWORD="Harbor12345" # Password for authenticating with the private registry (left blank for security) 
export REGISTRY_CA="/home/nutanix/registry-ca.crt" # Path to the CA certificate for the private registry
#export INGRESS_CERT="/home/nutanix/certs/ntnx.local/ntnx.local.crt" # Path to the cert of ingress (opt)
#export INGRESS_KEY="/home/nutanix/certs/ntnx.local/ntnx.local.key" # Path to the .key file of the ingress cert (opt)
#export INGRESS_CA="/home/nutanix/certs/ntnx.local.crt" # Path to the ingress CA-chain file (opt)
#export INGRESS_FQDN="nkp.ntnx.local" #FQDN of the Ingress controller to be used for browsing NKP web GUI (opt)
export DOCKER_REGISTRY="https://10.48.71.208/dockerhub" # URL To Pulltrough Cache for docker images