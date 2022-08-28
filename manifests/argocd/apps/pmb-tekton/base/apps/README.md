This will create an `EventListener` which let's you trigger a pmb-backup-postgresql Tekton pipeline in any namespace.

Prerequisites:
  - 2 PVC deployed in the namespace to be used by the pipeline
    `${appname}-backup` - to contain the "destination" for the kopia-repo
    `${appname}-temp`   - to provide storage between tasks (a place to copy the files prior to syncing)
    
You need to send the required parameters as JSON
parameters:
  - namespace
  - appname
  - controller

example:
```
curl -X POST \
  -d '{"namespace": "homeassistant-db", "appname": "homeassistant-db", "controller": "sts", "destination-pvc": "pvc-homeassistant-db-backup", "temp-pvc": "homeassistant-db-temp", "kopia_password": "secret"}' \
  http://el-generic-cron-listener.pmb-backup.svc.cluster.local:8080`
```

```
curl -X POST -d '{"namespace": "paperless", "appname": "paperless-ng", "destination-pvc": "paperless-db-backup", "source-pvc": "paperless-db-temp", "postgres-controller": "sts/paperless-db-postgresql" ,"kopia_password": "secret"}' http://el-pmb-listener.pmb-backup.svc.cluster.local:8080
```


```
curl -X POST -d '{"namespace": "paperless", "appname": "paperless-ng", "destination-pvc": "paperless-db-backup", "source-pvc": "paperless-ng-media", "postgres-controller": "sts/paperless-db-postgresql" ,"kopia_password": "secret"}' http://el-pmb-listener.pmb-backup.svc.cluster.local:8080
```

