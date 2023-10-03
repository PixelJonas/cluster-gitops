#/bin/sh

echo -n "$1" | kubeseal --raw --controller-namespace sealed-secrets --namespace "$3" --name "$2"