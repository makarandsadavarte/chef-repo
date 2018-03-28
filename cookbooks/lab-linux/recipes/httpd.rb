#install httpd server

package 'httpd' do
	action :install
end

#It will ensure httpd service is started and running

service 'httpd' do
	action [ :restart, :enable ]
end

#deploy sample web site

file '/var/www/html/index.html' do
	content '<html>
		 <titel> Hello </titel>
 		 <body>
		 This is Makaran Sadavarte  my frist web site
		 </body>
	         </html>'
end
