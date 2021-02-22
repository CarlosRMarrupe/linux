#!/bin/bash
#########################################################################
# Carlos Ramírez - 22/02/2021
# Install docker-ce and docker-compose on CentOS / RHEL
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
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.4/docker-compose-$(uname -s)-$(uname -m)" \
-o /usr/local/bin/docker-compose                                        ;
sudo chmod +x /usr/local/bin/docker-compose                             ;
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose        ;
sudo curl -L https://raw.githubusercontent.com/docker/compose/1.28.4/contrib/completion/bash/docker-compose \
-o /etc/bash_completion.d/docker-compose                                ;
#########################################################################
