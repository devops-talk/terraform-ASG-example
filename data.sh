  #!/bin/bash
  echo "*** Installing httpd"
  sudo yum update -y
  sudo yum install httpd -y
  sudo yum install git -y
  sudo git clone https://bitbucket.org/dptrealtime/html-web-app.git /var/www/html
  sudo service https restart
  echo "*** Completed Installing httpd"
