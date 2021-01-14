# NOTES

- Since we are installing the SealedSecrets Operator in a namespace != `kube-system` we need to use the `--controller-namespace` flag for `kubeseal` in order seal secrets