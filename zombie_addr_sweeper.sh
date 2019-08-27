addr_list_name="myaddr_list" #change to your addr_list_name

########DONT CHANGE CODE AFTER THIS LINE####################
addr_list=`tmsh list security shared-objects address-list $addr_list_name | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}"`
active_addr=`sessiondump -a | grep "session.assigned.clientip" | cut -d" " -f3`
zombie_addr=""
for addr in $addr_list
do
  is_active=`[[ $active_addr =~ (^|[[:space:]])$addr($|[[:space:]]) ]] && echo 'yes' || echo 'no'`
  if [[ $is_active == 'no' ]]; then
    zombie_addr="$zombie_addr $addr"
  fi
done
if [[ $zombie_addr != "" ]]; then
        result=`tmsh modify security shared-objects address-list $addr_list_name addresses del { $zombie_addr }`
fi
