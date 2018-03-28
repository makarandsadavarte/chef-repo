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
