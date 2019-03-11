#!/usr/bin/env bash
#Install jre and tomcat

function install_tomcat() {
  sudo apt-get update -y
  sudo apt-get install default-jre -y
  sudo apt-get install tomcat8 -y

  sudo mkdir /etc/tomcat
  sudo ln -s /etc/tomcat8/* /etc/tomcat #create symlink from tomcat8 to the default tomcat directory

}

function main(){
  install_tomcat
}

main