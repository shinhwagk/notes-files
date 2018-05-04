
```sh
root@srv [~]#cd /etc/yum.repos.d
 
root@client_srv [/etc/yum.repos.d]#vim custom_repo.repo
 
[custom_repo]
name=Extra packages from Custom Repo
baseurl=http://repo.example.com/repos/CentOS/$releasever/all_packages
enabled=1
gpgcheck=0
```