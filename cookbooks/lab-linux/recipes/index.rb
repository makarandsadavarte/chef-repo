package 'httpd' do
        action :install
end

#It will ensure httpd service is started and running

service 'httpd' do
        action [ :restart, :enable ]
end

#deploy sample web site



template '/var/www/html/index.html' do
        
	source 'index.erb'
end

