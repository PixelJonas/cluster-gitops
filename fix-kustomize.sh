#/bin/sh
find . -name "kustomization.yaml" -print0 | while read -d $'\0' file
do
    echo "$file"
    pushd $(dirname $file)
    kustomize edit fix --vars
    popd
done