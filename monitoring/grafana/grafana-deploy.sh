kubectl create namespace grafana

helm install grafana grafana/grafana \
    --namespace grafana \
    --set persistence.storageClassName="gp2" \
    --set persistence.enabled=true \
    --set adminPassword='EKSGrafanaGP5' \
    --values ${HOME}/environment/logging/grafana.yaml \
    --set service.type=LoadBalancer
