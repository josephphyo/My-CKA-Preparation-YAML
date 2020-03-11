

cat <<EOF | kubectl apply -f -
apiVersion: certificates.k8s.io/v1beta1
kind: CertificateSigningRequest
metadata:
  name: joseph
spec:
  request: $(cat /Users/phyominhtun/Documents/kubernetes-yaml/openssl/joseph.csr | base64 | tr -d '\n')
  usages:
  - digital signature
  - key encipherment
  - client auth
EOF
