#
# Cookbook:: lab-windows
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

windows_feature "TelnetClient" do
	action :install
#	all true
#	provider :windows_feature_powershell
end


# Install IIS server on windows node

#powershell_script 'Install IIS' do
#  code 'Add-WindowsFeature Web-Server'
#  guard_interpreter :powershell_script
#  not_if '(Get-WindowsFeature -Name Web-Server).Installed'
#end

#service 'w3svc' do
#  action [:enable, :start]
#end

powershell_script 'Install IIS' do
	code 'Add-WindowsFeature Web-Server'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-Server).Installed'
end

service 'w3svc' do
	action [:enable, :start]
end

directory 'c:\inetpub\wwwroot' do
	rights :read, 'IIS_USRS'
	recursive true
	action :create
end

template 'c:\inetpub\wwwroot\index.html' do
	source 'index.html.erb'
end
