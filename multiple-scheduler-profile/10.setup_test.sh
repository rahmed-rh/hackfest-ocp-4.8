for i in {1..50} ;
do
printf "%s" ${i}
oc new-project sch-test${i} ; 
oc new-app --template=cakephp-mysql-example ;

done


