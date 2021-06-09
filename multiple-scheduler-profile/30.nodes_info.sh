# display node allocatable
echo "node allocatable" 
oc get nodes -o=jsonpath="{range .items[*]}{.metadata.name}{'\t'}{.status.allocatable.cpu}{'\t'}{.status.allocatable.memory}{'\n'}{end}"

# pods count in each node
echo "pods count in each node"
echo "ip-10-0-132-98.eu-west-1.compute.internal $(oc get pods --all-namespaces -o wide --field-selector spec.nodeName=ip-10-0-132-98.eu-west-1.compute.internal | awk '{ print $1 }' | wc -l)"
echo "ip-10-0-176-30.eu-west-1.compute.internal $(oc get pods --all-namespaces -o wide --field-selector spec.nodeName=ip-10-0-176-30.eu-west-1.compute.internal | awk '{ print $1 }' | wc -l)"
echo "ip-10-0-200-134.eu-west-1.compute.internal $(oc get pods --all-namespaces -o wide --field-selector spec.nodeName=ip-10-0-200-134.eu-west-1.compute.internal | awk '{ print $1 }' | wc -l)"

