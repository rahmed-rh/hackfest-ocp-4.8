for i in {1..50} ;
do
printf "%s" ${i}
oc project sch-test${i}
oc delete all --all
oc delete project sch-test${i}

done
