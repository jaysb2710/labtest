#!/bin/bash -xe

#su ec2-user
sudo amazon-linux-extras install nginx1
sudo systemctl start nginx
sudo systemctl enable nginx
sudo su -c "cat > /usr/share/nginx/html/index.html <<EOL
<html>
    <head>
        <title>Testing an Ec2 Launch</title>
        <style>
           html, body { background: #000; padding: 0; margin:0; }
           img { display: bloack; margin: 0px auto; }
        </style>
    </head>
    <body>
       <img src='https://media.giphy.com/media/C7RCCFdaixA3u/giphy.gif' height='100%' />
    </body>
</html>
EOL"