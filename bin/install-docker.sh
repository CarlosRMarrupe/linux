#!/bin/bash
#########################################################################
# Carlos Ramírez - 22/02/2021
# Install docker-ce on CentOS / RHEL
#########################################################################
engine=docker                                                           ;
repo=https://download.docker.com/linux/centos/docker-ce.repo		;
#########################################################################
sudo yum update -y                                                      ;
sudo yum install -y yum-utils device-mapper-persistent-data lvm2	;
sudo yum-config-manager --add-repo ${repo}                              ;
#########################################################################
for package in                                                          \
        ${engine}-ce                                                    \
                                                                        ;
do                                                                      \
        while true                                                      ;
        do                                                              \
                yum list installed ${package}                           \
                &&                                                      \
                break                                                   ;
                sudo yum install -y ${package}                          ;
                sleep 10                                                ;
        done                                                            ;
done                                                                    ;
#########################################################################
sudo systemctl restart ${engine}                 			;
sudo systemctl enable  ${engine}  	                                ;
#########################################################################
