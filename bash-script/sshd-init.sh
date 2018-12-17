# put *.pub in ./
# run with root user `sudo -s`?
set -e
target_dir=~/.ssh
test -d $target_dir || {
    mkdir $target_dir;
    chmod 700 $target_dir;
}
cd $target_dir
for i in ./*.pub
do
	cat $i >> authorized_keys
done
chmod 600 authorized_keys
sshd --version && service sshd restart || {
    apt install openssh-server -y;
    service sshd start;
}
