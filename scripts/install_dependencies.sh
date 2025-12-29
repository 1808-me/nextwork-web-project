#!/bin/bash

# Update system
dnf update -y

# Install Java and Tomcat 9
dnf install -y java-1.8.0-amazon-corretto tomcat9 tomcat9-webapps tomcat9-admin-webapps

# Enable and start Tomcat
systemctl enable tomcat9
systemctl start tomcat9

