#!/bin/bash
echo "Deleting existing secret."
kubectl delete secret -n sealed-secrets -l sealedsecrets.bitnami.com/sealed-secrets-key
echo "Creating secret from local drive."
kubectl create -f ~/.bitnami/sealed-secrets-secret.yaml -n sealed-secrets
echo "Restarting Sealed Secrets controller."
kubectl delete pod -l name=sealed-secrets-controller -n sealed-secrets