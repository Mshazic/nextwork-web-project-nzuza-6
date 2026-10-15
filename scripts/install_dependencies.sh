
#!/bin/bash
set -e

echo "=== BeforeInstall started ==="

# Stop Tomcat if it is running
if systemctl is-active --quiet tomcat; then
  systemctl stop tomcat
fi

# Clean previous deployment
rm -rf /usr/share/tomcat/webapps/nextwork-web-project
rm -rf /tmp/codedeploy-deployment

mkdir -p /tmp/codedeploy-deployment

echo "=== BeforeInstall completed ==="