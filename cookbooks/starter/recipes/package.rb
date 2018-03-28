package 'httpd' do
	action :install
end

service 'httpd' do
	action [ :start, :enable ]
end

file '/var/www/html/index.html' do

	content '<html>
		 <title> Hi</title>
		 <body> This is My frist webpage using chef </body>
		 </html>'
end



