oc new-project test-pdb
oc new-app centos/httpd-24-centos7~https://github.com/sclorg/httpd-ex
oc patch deployment httpd-ex --type=merge -p '{"spec":{"replicas": 3}}'

cat << EOF | oc apply -f -
apiVersion: policy/v1beta1 
kind: PodDisruptionBudget
metadata:
  name: test-pdb
spec:
  minAvailable: 2  
  selector:  
    matchLabels:
      deployment: httpd-ex
EOF
