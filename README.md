# Installation

- Download and install [ProxmoxVE](https://www.proxmox.com/en/downloads/category/iso-images-pve)

- create your `.proxmox.yaml` and `hosts.yaml` by copying the example
- set the drives for your mergerfs and snapraid in the `lab.yaml`
- adjust values in `all.yaml` (like GitHub Username and main user)


# NOTES

- Since we are installing the SealedSecrets Operator in a namespace != `kube-system` we need to use the `--controller-namespace` flag for `kubeseal` in order seal secrets