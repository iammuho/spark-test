# Port forward the Argo CD server service
kubectl port-forward svc/argocd-server -n argocd 8080:443