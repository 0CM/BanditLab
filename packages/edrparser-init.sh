echo 'alias edrparser="source $HOME/pyapps/bin/activate&&edrparser"' >> /home/ubuntu/.bashrc
mkdir $HOME/tools/EZTools/RECmd/BatchExamples 
wget https://raw.githubusercontent.com/EricZimmerman/RECmd/refs/heads/master/BatchExamples/Kroll_Batch.reb -O $HOME/tools/EZTools/RECmd/BatchExamples/Kroll_Batch.reb --no-check-certificate 
wget https://raw.githubusercontent.com/EricZimmerman/RECmd/refs/heads/master/BatchExamples/UserActivity.reb -O $HOME/tools/EZTools/RECmd/BatchExamples/UserActivity.reb --no-check-certificate 
ln -s $HOME/tools/hayabusa/hayabusa-2.16.0-lin-aarch64-gnu $HOME/tools/hayabusa/hayabusa 
sudo -u ubuntu /home/ubuntu/pyapps/bin/python3 -m pip install chardet
sudo -u ubuntu /home/ubuntu/pyapps/bin/python3 -m pip install https://github.com/0CM/BanditLab/raw/refs/heads/main/packages/edrparser-2.2.0.tar.gz