python3 -m venv /home/ubuntu/plaso
echo 'alias log2timeline="source $HOME/plaso/bin/activate&&log2timeline"' >> /home/ubuntu/.bashrc
echo 'alias pinfo="source $HOME/plaso/bin/activate&& pinfo"' >> /home/ubuntu/.bashrc
echo 'alias psteal="source $HOME/plaso/bin/activate&&psteal"' >> /home/ubuntu/.bashrc 
echo 'alias psort="source $HOME/plaso/bin/activate&&psort"' >> /home/ubuntu/.bashrc 
source /home/ubuntu/plaso/bin/activate

