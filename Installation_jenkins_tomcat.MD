
 sudo apt update

 sudo apt install maven git -y

 mvn --version

## https://www.jenkins.io/doc/book/installing/linux/#debianubuntu

sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update

sudo apt-get install jenkins

sudo systemctl enable jenkins  // it make always service avaiable 


sudo systemctl start jenkins  // to start the service


  
sudo systemctl status jenkins  // to check the services status 

## to download tomocat # https://tomcat.apache.org/download-90.cgi#9.0.105  // chose Tar format for linux OS


cd /opt/

sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.105/bin/apache-tomcat-9.0.105.tar.gz

sudo tar -xvf apache-tomcat-9.0.105.tar.gz

sudo mv apache-tomcat-9.0.105 tomcat

sudo rm -rf apache-tomcat-9.0.105.tar.gz

ls -l

sudo chown -R ubuntu:ubuntu tomcat/

ls -l

cd /opt/tomcat/bin/

sudo chmod +x startup.sh shutdown.sh

cd /opt/tomcat/conf/

  vi tomcat-users.xml  // to create username with password and set permission to the same user

```
<user username="admin" password="admin" roles="manager-gui,admin-gui,manager-script"/>
```

vi /opt/tomcat/server.xml  // change the port number of tomcat webserver 
```      
        Connector port="8880" protocol="HTTP/1.1"
```

sudo ln -s /opt/tomcat/bin/startup.sh /usr/local/bin/tomcatup   // to create a soft link 
 
sudo ln -s /opt/tomcat/bin/shutdown.sh /usr/local/bin/tomcatdown // to create a soft link 

  tomcatdown		// to shutdown the tomcat
  tomcatup		// to start up the tomcat


  find / -name context.xml

  vi /opt/tomcat/webapps/host-manager/META-INF/context.xml

```
  <!--  <Valve className="org.apache.catalina.valves.RemoteAddrValve"
  allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" /> -->

```
  vi /opt/tomcat/webapps/manager/META-INF/context.xml

```
  <!--  <Valve className="org.apache.catalina.valves.RemoteAddrValve"
  allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" /> -->
```

  tomcatdown
  tomcatup




