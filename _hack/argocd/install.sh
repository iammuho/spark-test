# Step 1: Create Argo CD namespace
kubectl create namespace argocd

# Step 2: Install Argo CD
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# Step 3: Wait for Argo CD components to be up and running
echo "Waiting for Argo CD components to be up and running..."
kubectl wait --for=condition=available --timeout=600s deployment -l app.kubernetes.io/part-of=argocd -n argocd

# Step 4: Fetch and Decode Argo CD initial admin password
ARGOCD_SECRET=$(kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}")
echo "Encoded password: $ARGOCD_SECRET"
DECODED_PASSWORD=$(echo $ARGOCD_SECRET | base64 -d)
echo "Decoded password: $DECODED_PASSWORD"