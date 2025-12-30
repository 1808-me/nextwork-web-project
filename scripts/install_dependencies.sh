#!/bin/bash
set -e
set -x

# Update system
dnf update -y || true  # ignore minor update errors

# Install Java and Tomcat 9
dnf install -y java-1.8.0-amazon-corretto tomcat9 tomcat9-webapps tomcat9-admin-webapps

# Enable and start Tomcat safely
if systemctl list-unit-files | grep -q tomcat9.service; then
    systemctl enable tomcat9
    systemctl start tomcat9
else
    echo "Tomcat9 service not found, exiting"
    exit 1
fi
