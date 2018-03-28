name "lab-linux"
description "Maklab role for linux server"
run_list "recipe[lab-linux::httpd]"
run_list "recipe[lab-linux::uninstall]"

