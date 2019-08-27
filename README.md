# clearpassapi

### 1. copy the script "zombie_addr_sweeper.sh" into /home/admin/zombie_addr_sweeper.sh on both active and standby unit
### 2. chmod u+x /home/admin/zombie_addr_sweeper.sh
### 3. create sys icall script zombie_addr_sweeper
### 4. modify sys icall script zombie_addr_sweeper definition { exec /home/admin/zombie_addr_sweeper.sh }
### 5. create sys icall handler periodic zombie_addr_sweeper_handler interval 20 script zombie_addr_sweeper


