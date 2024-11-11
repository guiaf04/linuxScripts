#!/bin/bash

sudo cp aczginitRepository.sh /usr/local/bin/
echo 'alias aczginitrepo="bash /usr/local/bin/aczginitRepository.sh"' >> ~/.bashrc

sudo cp aczginit.sh /usr/local/bin/
echo 'alias aczginit="bash /usr/local/bin/aczginit.sh"' >> ~/.bashrc

sudo cp aczgfinish.sh /usr/local/bin/
echo 'alias aczgfinish="bash /usr/local/bin/aczgfinish.sh"' >> ~/.bashrc

sudo cp pipelineCI.sh /usr/local/bin/
echo 'alias aczgpipeline="bash /usr/local/bin/pipelineCI.sh"' >> ~/.bashrc

sudo cp pipelineLogs.sh /usr/local/bin/
echo 'alias aczgpipelineLog="bash /usr/local/bin/pipelineCI.sh"' >> ~/.bashrc

sudo cp commits.sh /usr/local/bin
sudo cp unitTest.sh /usr/local/bin

echo "Ambiente configurado."