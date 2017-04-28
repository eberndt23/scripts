#!/bin/bash

//replace with current guacamole version
VERSION="0.9.12"
SERVER=$(curl -s 'https://www.apache.org/dyn/closer.cgi?as_json=1' | jq --raw-output '.preferred')

# stop tomcat
service tomcat8 stop

# Download, build, and install server
wget ${SERVER}/incubator/guacamole/${VERSION}-incubating/source/guacamole-server-${VERSION}-incubating.tar.gz
tar -xzf guacamole-server-${VERSION}-incubating.tar.gz
cd guacamole-server-${VERSION}-incubating
./configure --with-init-dir=/etc/init.d
make
make install
ldconfig
systemctl enable guacd
cd ..

# Download the client and replace the old client
wget ${SERVER}/incubator/guacamole/${VERSION}-incubating/binary/guacamole-${VERSION}-incubating.war
mv guacamole-${VERSION}-incubating.war /etc/guacamole/guacamole.war

# Download the SQL component, and upgrade SQL
wget ${SERVER}/incubator/guacamole/${VERSION}-incubating/binary/guacamole-auth-jdbc-${VERSION}-incubating.tar.gz
tar -xzf guacamole-auth-jdbc-${VERSION}-incubating.tar.gz
cp guacamole-auth-jdbc-${VERSION}-incubating/mysql/guacamole-auth-jdbc-mysql-${VERSION}-incubating.jar /etc/guacamole/extensions/

# Start tomcat8 and remove downloads
service tomcat8 start
rm -rf guacamole*
// it is possible future guacamole upgrades will require a schema update for mysql authentication. Check documentation for details
