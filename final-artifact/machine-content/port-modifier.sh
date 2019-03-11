#!/usr/bin/env bash
#Changing tomcat default port 8080 to 9090

PORT=9090

function modify_tomcat_connection_port() {
  echo "Changing tomcat default port (8080)"
  sudo sed -i "s|.*\<Connector port=\"8080\" protocol=\"HTTP\/1.1\"*|\<Connector port=\"${PORT}\" protocol=\"HTTP/1.1\"|g" /etc/tomcat/server.xml #change port 8080 to 9090 for tomcat
  sudo /etc/init.d/tomcat8 restart #restart tomcat service to apply changes
  echo "Port changed to {$PORT}"

}


function main(){
  modify_tomcat_connection_port
}

main