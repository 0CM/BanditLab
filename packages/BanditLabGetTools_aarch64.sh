# Create Folder Structure
for dir in DATA ewfmount evidence tools tools/hayabusa tools/memprocfs tools/trufflehog tools/noseyparker tools/pup tools/vt tools/nuclei; do
    sudo -u ubuntu sh -c "mkdir -p $HOME/$dir"
done

sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BanditLab/raw/main/packages/EZTools_aarch64-20240710.tar.gz | tar -xz -C "$HOME"/tools/'
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BanditLab/raw/main/packages/sidr_aarch64-20240702.tar.gz | tar -xz -C "$HOME"/tools/'
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/ufrisk/MemProcFS/releases/download/v5.10/MemProcFS_files_and_binaries_v5.10.1-linux_aarch64-20240721.tar.gz | tar -xz -C "$HOME"/tools/memprocfs'
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/Yamato-Security/hayabusa/releases/download/v2.16.0/hayabusa-2.16.0-linux-arm.zip | bsdtar -xvf- -C "$HOME"/tools/hayabusa'
sudo -u ubuntu sh -c 'chmod 755 "$HOME"/tools/hayabusa/hayabusa-2.16.0-lin-aarch64-gnu'
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/trufflesecurity/trufflehog/releases/download/v3.79.0/trufflehog_3.79.0_linux_arm64.tar.gz | tar -xz -C "$HOME"/tools/trufflehog'
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/praetorian-inc/noseyparker/releases/download/v0.18.1/noseyparker-v0.18.1-aarch64-unknown-linux-gnu.tar.gz | tar -xz -C "$HOME"/tools/noseyparker'
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BanditLab/raw/main/packages/chainsaw_aarch64-20240713.tar.gz | tar -xz -C "$HOME"/tools/'
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BanditLab/raw/main/packages/timeliner_aarch64-20240805.tar.gz | tar -xz -C "$HOME"/tools/'
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/ericchiang/pup/releases/download/v0.4.0/pup_v0.4.0_linux_arm64.zip | bsdtar -xvf- -C "$HOME"/tools/pup && chmod 755 "$HOME"/tools/pup/pup && sudo ln -s "$HOME"/tools/pup/pup /usr/bin/pup'
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BanditLab/raw/main/packages/vt-cli_aarch64-20240720.tar.gz | tar -xz -C "$HOME"/tools/vt && chmod 755 "$HOME"/tools/vt/vt && sudo ln -s "$HOME"/tools/vt/vt /usr/bin/vt'
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/projectdiscovery/nuclei/releases/download/v3.3.0/nuclei_3.3.0_linux_arm64.zip | bsdtar -xvf- -C "$HOME"/tools/nuclei && chmod 755 "$HOME"/tools/nuclei/nuclei && sudo ln -s "$HOME"/tools/nuclei/nuclei /usr/bin/nuclei'
sudo -u ubuntu sh -c 'nuclei -update'
sudo -u ubuntu sh -c 'wget --no-check-certificate https://raw.githubusercontent.com/ajread4/prefetcher/refs/heads/main/prefetcher.py -O pyapps/bin/prefetcher.py && chmod 755  pyapps/bin/prefetcher.py'