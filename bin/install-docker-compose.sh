#!/bin/bash
#########################################################################
# Carlos Ramírez - 22/02/2021
# Install docker-compose on Linux
#########################################################################
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.4/docker-compose-$(uname -s)-$(uname -m)" \
-o /usr/local/bin/docker-compose                                        ;
sudo chmod +x /usr/local/bin/docker-compose                             ;
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose        ;
sudo curl -L https://raw.githubusercontent.com/docker/compose/1.28.4/contrib/completion/bash/docker-compose \
-o /etc/bash_completion.d/docker-compose                                ;
#########################################################################
