#
# Cookbook Name:: my-linux
# Recipe:: ubuntu
#
# Copyright 2014, Adam Salvo
#
# All rights reserved - Do Not Redistribute
#

#######################################################################################################################
#Default UFW Configuration
#######################################################################################################################

#Note about Firwall
# - firewall_rule, the ports optoin (i.e. ports [80,443]) will run every time
# - No way to remove firwall rules. May consider switching to something like Shorewall with is config file based 

#Enable SSH. If the attribute does not exist, then allow SSH
sshAllowArray = node[:my_linux_firewall][:ssh_allow]
if sshAllowArray.any?
	sshAllowArray.each do |ip|
		firewall_rule 'ssh' do
	 		port	22
	  		action	:allow
	  		source	"#{ip}"
	  		notifies :enable, 'firewall[ufw]'
	  	end
	end
else
	firewall_rule 'ssh' do
  		port     22
  		action   :allow
  		notifies :enable, 'firewall[ufw]'
	end
end

# enable platform default firewall
firewall 'ufw' do
  action :enable
end

#######################################################################################################################
#Default Groups
#######################################################################################################################
group "sshusers" do
	action :create
	members ["asalvo_local"]
	gid 10001
	append true
end

#######################################################################################################################
#SSHD Configuration
#######################################################################################################################
cookbook_file "/etc/ssh/sshd_config" do
	source "sshd_config"
	notifies :restart, "service[ssh]"
end

service "ssh" do
	start_command "service ssh start"                          
 	restart_command "service ssh restart"                      
 	supports :restart => true
	action :nothing
end