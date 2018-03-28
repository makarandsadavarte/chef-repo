package 'httpd' do
	action :remove
end

file '/var/www/html/index.html' do
	action :delete
end
