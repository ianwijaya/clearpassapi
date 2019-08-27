# clearpassapi

### 1. copy the script "zombie_addr_sweeper.sh" into /home/admin/zombie_addr_sweeper.sh on both active and standby unit
### 2. change this variable in the script 
#### addr_list_name="myaddr_list" #change it to your address list name
### 3. chmod u+x /home/admin/zombie_addr_sweeper.sh
### 4. create sys icall script zombie_addr_sweeper
### 5. modify sys icall script zombie_addr_sweeper definition { exec /home/admin/zombie_addr_sweeper.sh }
### 6. create sys icall handler periodic zombie_addr_sweeper_handler interval 20 script zombie_addr_sweeper


