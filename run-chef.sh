#Keeping this in the root folder makes it easier for things to work w/o a lot of pathing. 

#Clear the screen
clear

#Excute Chef Client in Local Mode (-z) passing the current hostname to the Node (-N) parameter
/opt/chef/bin/chef-client -z -N $(hostname)
