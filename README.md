# 🚀 DevOps CI/CD Security & Version Control Management System

## 📌 Project Objective
This project implements a complete DevOps workflow integrating Linux administration, Git & GitHub version control, CI/CD automation, SonarQube integration, and Open Policy Agent (OPA) for security enforcement.

---

## 🧱 Project Structure
company-devops-platform/
│
├── configs/
├── deployments/
├── policies/
├── reports/
│ ├── sonarqube/
│ ├── opa/
├── artifacts/
├── .github/workflows/
│ ├── ci.yml
│ ├── cd.yml
├── deployment.yaml
├── README.md


---

## ⚙️ Tech Stack Used
- Linux (User & Process Management)
- Git & GitHub (Branching & Collaboration)
- GitHub Actions (CI/CD Pipeline)
- SonarQube (Static Code Analysis - simulated/optional)
- Open Policy Agent (OPA) / Conftest (Security Policies)

---



## Linux (User and Proceess managment)
zsh: corrupt history file /home/ujjwal/.zsh_history
┌──(ujjwal㉿vbox)-[~]
└─$ cd Desktop                       
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop]
└─$ mkdir ^[[200~company-devops-platform.~                 
zsh: bad pattern: ^[[200~company-devops-platform.~
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop]
└─$ mkdir company-devops-platform         
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop]
└─$ cd company-devops-platform.
cd: no such file or directory: company-devops-platform.
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop]
└─$ cd company-devops-platform 
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ mkdir configs deployments policies reports
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ tree               
.
├── configs
├── deployments
├── policies
└── reports

5 directories, 0 files
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ sudo useradd developer       
[sudo] password for ujjwal: 
useradd: group developer exists - if you want to add this user to that group, use -g.
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ sudo useradd tester   
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ sudo useradd devopsadmin
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ sudo groupadd developers
groupadd: group 'developers' already exists
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ sudo groupadd operations
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ sudo usermod -aG developer developers
usermod: user 'developers' does not exist
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ sudo usermod -aG developers developer
usermod: user 'developer' does not exist
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ sudo usermod -aG developers developer
usermod: user 'developer' does not exist
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ sudo useradd developer               
useradd: group developer exists - if you want to add this user to that group, use -g.
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ 
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ sudo useradd -g developer 
Usage: useradd [options] LOGIN
       useradd -D
       useradd -D [options]

Options:
      --badname                 do not check for bad names (DEPRECATED)
  -b, --base-dir BASE_DIR       base directory for the home directory of the
                                new account
      --btrfs-subvolume-home    use BTRFS subvolume for home directory
  -c, --comment COMMENT         GECOS field of the new account
  -d, --home-dir HOME_DIR       home directory of the new account
  -D, --defaults                print or change default useradd configuration
  -e, --expiredate EXPIRE_DATE  expiration date of the new account
  -f, --inactive INACTIVE       password inactivity period of the new account
  -F, --add-subids-for-system   add entries to sub[ud]id even when adding a system user
  -g, --gid GROUP               name or ID of the primary group of the new
                                account
  -G, --groups GROUPS           list of supplementary groups of the new
                                account
  -h, --help                    display this help message and exit
  -k, --skel SKEL_DIR           use this alternative skeleton directory
  -K, --key KEY=VALUE           override /etc/login.defs defaults
  -m, --create-home             create the user's home directory
  -M, --no-create-home          do not create the user's home directory
  -N, --no-user-group           do not create a group with the same name as
                                the user
  -o, --non-unique              allow to create users with duplicate
                                (non-unique) UID
  -p, --password PASSWORD       encrypted password of the new account
  -r, --system                  create a system account
  -R, --root CHROOT_DIR         directory to chroot into
  -P, --prefix PREFIX_DIR       prefix directory where are located the /etc/* files
  -s, --shell SHELL             login shell of the new account
  -u, --uid UID                 user ID of the new account
  -U, --user-group              create a group with the same name as the user
  -Z, --selinux-user SEUSER     use a specific SEUSER for the SELinux user mapping
      --selinux-range SERANGE   use a specific MLS range for the SELinux user mapping

                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ sudo useradd -m -g developers developer
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ sudo usermod -aG developer developers
usermod: user 'developers' does not exist
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ sudo usermod -aG developers developer
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ sudo usermod -aG developers tester   
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ sudo usermod -aG operations devopsadmin
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ sudo chgrp -R developers company-devops-platform
chgrp: cannot access 'company-devops-platform': No such file or directory
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ cd ..                     
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop]
└─$ sudo chgrp -R developers company-devops-platform
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop]
└─$ sudo chmod -R 770 company-devops-platform
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop]
└─$ sudo usermod -aG sudo devopsadmin
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop]
└─$ cd company-devops-platform
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ cd config                 
cd: no such file or directory: config
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ ls  
configs  deployments  policies  reports
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ cd configs
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform/configs]
└─$ touch deployment.yaml pipeline.yaml security.conf
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform/configs]
└─$ cd ..     
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ mkdir backup                              
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ cp configs/* backup/
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ cd backup           
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform/backup]
└─$ for file in *; do
    mv "$file" "$(date +%Y%m%d_%H%M%S)_$file"
done
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform/backup]
└─$ ls
20260512_122205_deployment.yaml  20260512_122205_pipeline.yaml  20260512_122205_security.conf
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform/backup]
└─$ cd ..    
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ tree                                             
.
├── backup
│   ├── 20260512_122205_deployment.yaml
│   ├── 20260512_122205_pipeline.yaml
│   └── 20260512_122205_security.conf
├── configs
│   ├── deployment.yaml
│   ├── pipeline.yaml
│   └── security.conf
├── deployments
├── policies
└── reports

6 directories, 6 files
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ jobs
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ sleep 500 &                      
[1] 11764
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ jobs
[1]  + running    sleep 500
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ kill %1          
[1]  + terminated  sleep 500                                                                                       

┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ jobs
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ ps    
    PID TTY          TIME CMD
   2263 pts/0    00:00:02 zsh
  12274 pts/0    00:00:00 ps
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ ps -a
    PID TTY          TIME CMD
  12304 pts/0    00:00:00 ps
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ ps -ef
UID          PID    PPID  C STIME TTY          TIME CMD
root           1       0  0 12:04 ?        00:00:02 /sbin/init splash
root           2       0  0 12:04 ?        00:00:00 [kthreadd]
root           3       2  0 12:04 ?        00:00:00 [pool_workqueue_release]
root           4       2  0 12:04 ?        00:00:00 [kworker/R-rcu_gp]
root           5       2  0 12:04 ?        00:00:00 [kworker/R-sync_wq]
root           6       2  0 12:04 ?        00:00:00 [kworker/R-kvfree_rcu_reclaim]
root           7       2  0 12:04 ?        00:00:00 [kworker/R-slub_flushwq]
root           8       2  0 12:04 ?        00:00:00 [kworker/R-netns]
root          13       2  0 12:04 ?        00:00:00 [kworker/R-mm_percpu_wq]
root          14       2  0 12:04 ?        00:00:00 [ksoftirqd/0]
root          15       2  0 12:04 ?        00:00:00 [rcu_preempt]
root          16       2  0 12:04 ?        00:00:00 [rcu_exp_par_gp_kthread_worker/0]
root          17       2  0 12:04 ?        00:00:00 [rcu_exp_gp_kthread_worker]
root          18       2  0 12:04 ?        00:00:00 [migration/0]
root          19       2  0 12:04 ?        00:00:00 [idle_inject/0]
root          20       2  0 12:04 ?        00:00:00 [cpuhp/0]
root          22       2  0 12:04 ?        00:00:00 [kdevtmpfs]
root          23       2  0 12:04 ?        00:00:00 [kworker/R-inet_frag_wq]
root          24       2  0 12:04 ?        00:00:00 [rcu_tasks_kthread]
root          25       2  0 12:04 ?        00:00:00 [rcu_tasks_rude_kthread]
root          26       2  0 12:04 ?        00:00:00 [rcu_tasks_trace_kthread]
root          27       2  0 12:04 ?        00:00:00 [kauditd]
root          28       2  0 12:04 ?        00:00:00 [khungtaskd]
root          29       2  0 12:04 ?        00:00:00 [oom_reaper]
root          32       2  0 12:04 ?        00:00:00 [kworker/R-writeback]
root          33       2  0 12:04 ?        00:00:00 [kcompactd0]
root          34       2  0 12:04 ?        00:00:00 [ksmd]
root          35       2  0 12:04 ?        00:00:00 [khugepaged]
root          36       2  0 12:04 ?        00:00:00 [kworker/R-kblockd]
root          37       2  0 12:04 ?        00:00:00 [kworker/R-blkcg_punt_bio]
root          38       2  0 12:04 ?        00:00:00 [kworker/R-kintegrityd]
root          39       2  0 12:04 ?        00:00:00 [irq/9-acpi]
root          40       2  0 12:04 ?        00:00:00 [kworker/R-tpm_dev_wq]
root          41       2  0 12:04 ?        00:00:00 [kworker/R-edac-poller]
root          42       2  0 12:04 ?        00:00:00 [kworker/R-devfreq_wq]
root          43       2  0 12:04 ?        00:00:00 [kworker/R-quota_events_unbound]
root          45       2  0 12:04 ?        00:00:00 [kswapd0]
root          46       2  0 12:04 ?        00:00:01 [kdamond.0]
root          49       2  0 12:04 ?        00:00:00 [kworker/R-kthrotld]
root          50       2  0 12:04 ?        00:00:00 [kworker/R-acpi_thermal_pm]
root          51       2  0 12:04 ?        00:00:00 [kworker/R-mld]
root          52       2  0 12:04 ?        00:00:00 [kworker/R-ipv6_addrconf]
root          53       2  0 12:04 ?        00:00:00 [kworker/R-kstrp]
root          61       2  0 12:04 ?        00:00:00 [kworker/u5:0-ttm]
root         186       2  0 12:04 ?        00:00:00 [kworker/R-ata_sff]
root         187       2  0 12:04 ?        00:00:00 [scsi_eh_0]
root         188       2  0 12:04 ?        00:00:00 [kworker/R-scsi_tmf_0]
root         189       2  0 12:04 ?        00:00:00 [scsi_eh_1]
root         190       2  0 12:04 ?        00:00:00 [kworker/R-scsi_tmf_1]
root         191       2  0 12:04 ?        00:00:00 [scsi_eh_2]
root         192       2  0 12:04 ?        00:00:00 [kworker/R-scsi_tmf_2]
root         197       2  0 12:05 ?        00:00:00 [irq/18-vmwgfx]
root         198       2  0 12:05 ?        00:00:00 [kworker/R-ttm]
root         199       2  0 12:05 ?        00:00:01 [kworker/0:2H-kblockd]
root         240       2  0 12:05 ?        00:00:00 [jbd2/sda1-8]
root         241       2  0 12:05 ?        00:00:00 [kworker/R-ext4-rsv-conversion]
root         268       2  0 12:05 ?        00:00:02 [kworker/0:7-events]
root         294       2  0 12:05 ?        00:00:00 [psimon]
root         304       1  0 12:05 ?        00:00:00 /usr/lib/systemd/systemd-journald
root         334       1  0 12:05 ?        00:00:00 /usr/lib/systemd/systemd-udevd
root         344       1  0 12:05 ?        00:00:00 /usr/lib/systemd/systemd-userdbd
root         348       2  0 12:05 ?        00:00:00 [psimon]
root         350       2  0 12:05 ?        00:00:00 [psimon]
root         456       1  0 12:05 ?        00:00:00 /usr/sbin/haveged --Foreground --verbose=1
root         464       1  0 12:05 ?        00:00:00 /usr/libexec/accounts-daemon
message+     466       1  0 12:05 ?        00:00:01 /usr/bin/dbus-daemon --system --address=systemd: --nofork --nop
polkitd      471       1  0 12:05 ?        00:00:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root         472       1  0 12:05 ?        00:00:00 /usr/lib/systemd/systemd-logind
dhcpcd       501       1  0 12:05 ?        00:00:00 dhcpcd: eth0 [ip4] [ip6]
root         502     501  0 12:05 ?        00:00:00 dhcpcd: [privileged proxy] eth0 [ip4] [ip6]
dhcpcd       503     501  0 12:05 ?        00:00:00 dhcpcd: [network proxy] eth0 [ip4] [ip6]
dhcpcd       504     501  0 12:05 ?        00:00:00 dhcpcd: [control proxy] eth0 [ip4] [ip6]
root         507       2  0 12:05 ?        00:00:00 [kworker/R-rpciod]
root         508       2  0 12:05 ?        00:00:00 [kworker/R-xprtiod]
root         511       1  0 12:05 ?        00:00:00 /usr/sbin/cron -f
root         524       2  0 12:05 ?        00:00:00 [kworker/R-cfg80211]
root         547       1  0 12:05 ?        00:00:00 /usr/sbin/NetworkManager --no-daemon
root         582       1  0 12:05 ?        00:00:00 /usr/sbin/ModemManager
root         627       1  0 12:05 ?        00:00:01 /usr/bin/VBoxDRMClient
root         633       1  0 12:05 ?        00:00:00 /usr/sbin/VBoxService
root         659       2  0 12:05 ?        00:00:00 [kworker/u5:1-ttm]
dhcpcd       660     502  0 12:05 ?        00:00:00 dhcpcd: [BPF ARP] eth0 10.21.162.130
dhcpcd       669     502  0 12:05 ?        00:00:00 dhcpcd: [DHCP6 proxy] fe80::3d5b:ac61:9c2a:73eb
root         705       1  0 12:05 ?        00:00:00 /usr/sbin/lightdm
root         708       1  0 12:05 ?        00:00:02 /usr/bin/containerd
root         710       1  0 12:05 ?        00:00:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root         721       1  0 12:05 tty1     00:00:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/e
root         722     705  2 12:05 tty7     00:00:28 /usr/lib/xorg/Xorg :0 -seat seat0 -auth /var/run/lightdm/root/:
dhcpcd       759     502  0 12:05 ?        00:00:00 dhcpcd: [BOOTP proxy] 10.21.162.130
root         790       1  0 12:05 ?        00:00:07 /usr/sbin/dockerd -H fd:// --containerd=/run/containerd/contain
root         856       2  0 12:05 ?        00:00:00 [kworker/u4:6-events_unbound]
rtkit        922       1  0 12:05 ?        00:00:00 /usr/libexec/rtkit-daemon
root        1327       1  0 12:05 ?        00:00:01 /usr/bin/containerd-shim-runc-v2 -namespace moby -id 3d58a83305
root        1346       1  0 12:05 ?        00:00:01 /usr/bin/containerd-shim-runc-v2 -namespace moby -id d6fa8d3fd3
root        1357       1  0 12:05 ?        00:00:01 /usr/bin/containerd-shim-runc-v2 -namespace moby -id a5fa36826b
root        1383    1327  0 12:05 ?        00:00:00 nginx: master process nginx -g daemon off;
root        1409    1346  1 12:05 ?        00:00:12 python -u IDS.py
root        1431    1357  0 12:05 ?        00:00:06 /usr/local/bin/python3.10 /usr/local/bin/uvicorn api:app --host
root        1479     790  0 12:05 ?        00:00:00 /usr/sbin/docker-proxy -proto tcp -host-ip 0.0.0.0 -host-port 8
root        1484     790  0 12:05 ?        00:00:00 /usr/sbin/docker-proxy -proto tcp -host-ip :: -host-port 80 -co
root        1517     790  0 12:05 ?        00:00:00 /usr/sbin/docker-proxy -proto tcp -host-ip 0.0.0.0 -host-port 8
root        1522     790  0 12:05 ?        00:00:00 /usr/sbin/docker-proxy -proto tcp -host-ip :: -host-port 8000 -
mysql       1530    1383  0 12:05 ?        00:00:00 nginx: worker process
root        1569     705  0 12:06 ?        00:00:00 lightdm --session-child 13 24
ujjwal      1593       1  0 12:06 ?        00:00:00 /usr/lib/systemd/systemd --user
ujjwal      1595    1593  0 12:06 ?        00:00:00 (sd-pam)
ujjwal      1616    1593  0 12:06 ?        00:00:00 /usr/bin/dbus-daemon --session --address=systemd: --nofork --no
ujjwal      1618    1593  0 12:06 ?        00:00:00 /usr/bin/pipewire
ujjwal      1620    1593  0 12:06 ?        00:00:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,
ujjwal      1626    1593  0 12:06 ?        00:00:00 /usr/bin/mpris-proxy
ujjwal      1629    1593  0 12:06 ?        00:00:00 /usr/bin/wireplumber
ujjwal      1630    1593  0 12:06 ?        00:00:00 /usr/bin/pipewire -c filter-chain.conf
ujjwal      1632    1593  0 12:06 ?        00:00:00 /usr/bin/pipewire-pulse
ujjwal      1633    1569  0 12:06 ?        00:00:00 xfce4-session
ujjwal      1709       1  0 12:06 ?        00:00:00 /usr/bin/VBoxClient --clipboard
ujjwal      1712    1709  0 12:06 ?        00:00:00 /usr/bin/VBoxClient --clipboard
ujjwal      1718       1  0 12:06 ?        00:00:00 /usr/bin/VBoxClient --seamless
ujjwal      1719    1718  0 12:06 ?        00:00:01 /usr/bin/VBoxClient --seamless
ujjwal      1725       1  0 12:06 ?        00:00:00 /usr/bin/VBoxClient --draganddrop
ujjwal      1726    1725  0 12:06 ?        00:00:06 /usr/bin/VBoxClient --draganddrop
ujjwal      1741       1  0 12:06 ?        00:00:00 /usr/bin/VBoxClient --vmsvga-session
ujjwal      1743    1741  0 12:06 ?        00:00:00 /usr/bin/VBoxClient --vmsvga-session
ujjwal      1760    1593  0 12:06 ?        00:00:00 /usr/libexec/at-spi-bus-launcher
ujjwal      1767    1760  0 12:06 ?        00:00:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/
ujjwal      1778    1593  0 12:06 ?        00:00:00 /usr/libexec/at-spi2-registryd --use-gnome-session
ujjwal      1785       1  0 12:06 ?        00:00:00 /usr/bin/ssh-agent -s
ujjwal      1793    1593  0 12:06 ?        00:00:00 /usr/bin/gpg-agent --supervised
ujjwal      1797    1633  0 12:06 ?        00:00:03 xfwm4
ujjwal      1802    1593  0 12:06 ?        00:00:00 /usr/libexec/gvfsd
ujjwal      1808    1593  0 12:06 ?        00:00:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
ujjwal      1817    1633  0 12:06 ?        00:00:00 xfsettingsd
ujjwal      1823    1593  0 12:06 ?        00:00:00 /usr/libexec/dconf-service
ujjwal      1824    1633  0 12:06 ?        00:00:00 xfce4-panel
ujjwal      1833    1633  0 12:06 ?        00:00:01 Thunar --daemon
ujjwal      1840    1633  0 12:06 ?        00:00:01 xfdesktop
ujjwal      1842    1824  0 12:06 ?        00:00:00 /usr/lib/x86_64-linux-gnu/xfce4/panel/wrapper-2.0 /usr/lib/x86_
ujjwal      1850    1824  0 12:06 ?        00:00:05 /usr/lib/x86_64-linux-gnu/xfce4/panel/wrapper-2.0 /usr/lib/x86_
ujjwal      1851    1824  0 12:06 ?        00:00:00 /usr/lib/x86_64-linux-gnu/xfce4/panel/wrapper-2.0 /usr/lib/x86_
ujjwal      1852    1824  0 12:06 ?        00:00:03 /usr/lib/x86_64-linux-gnu/xfce4/panel/wrapper-2.0 /usr/lib/x86_
ujjwal      1853    1824  0 12:06 ?        00:00:00 /usr/lib/x86_64-linux-gnu/xfce4/panel/wrapper-2.0 /usr/lib/x86_
ujjwal      1854    1824  0 12:06 ?        00:00:00 /usr/lib/x86_64-linux-gnu/xfce4/panel/wrapper-2.0 /usr/lib/x86_
ujjwal      1855    1824  0 12:06 ?        00:00:00 /usr/lib/x86_64-linux-gnu/xfce4/panel/wrapper-2.0 /usr/lib/x86_
ujjwal      1857    1824  0 12:06 ?        00:00:00 /usr/lib/x86_64-linux-gnu/xfce4/panel/wrapper-2.0 /usr/lib/x86_
root        1895       1  0 12:06 ?        00:00:00 /usr/libexec/upowerd
ujjwal      1909    1593  0 12:06 ?        00:00:00 /usr/lib/x86_64-linux-gnu/xfce4/notifyd/xfce4-notifyd
ujjwal      1921    1633  0 12:06 ?        00:00:00 /usr/bin/python3 /usr/share/system-config-printer/applet.py
ujjwal      1925       1  0 12:06 ?        00:00:00 xcape -e Super_L Control_L Escape
ujjwal      1927    1633  0 12:06 ?        00:00:00 xiccd
ujjwal      1931    1633  0 12:06 ?        00:00:00 /usr/libexec/polkit-mate-authentication-agent-1
ujjwal      1932    1633  0 12:06 ?        00:00:00 /usr/bin/python3 /usr/bin/blueman-applet
ujjwal      1940    1633  0 12:06 ?        00:00:00 xfce4-power-manager
colord      1942       1  0 12:06 ?        00:00:00 /usr/libexec/colord
ujjwal      1943    1633  0 12:06 ?        00:00:00 nm-applet
ujjwal      1956    1633  0 12:06 ?        00:00:00 /usr/libexec/geoclue-2.0/demos/agent
ujjwal      1960    1633  0 12:06 ?        00:00:00 xfce4-screensaver
ujjwal      1977    1633  0 12:06 ?        00:00:00 xautoresize
ujjwal      2096    1593  0 12:06 ?        00:00:00 /usr/libexec/gvfs-udisks2-volume-monitor
root        2100       1  0 12:06 ?        00:00:00 /usr/libexec/udisks2/udisksd
ujjwal      2110    1593  0 12:06 ?        00:00:00 /usr/libexec/gvfs-mtp-volume-monitor
ujjwal      2124    1593  0 12:06 ?        00:00:00 /usr/libexec/gvfs-goa-volume-monitor
ujjwal      2133    1593  0 12:06 ?        00:00:00 /usr/libexec/gvfs-gphoto2-volume-monitor
ujjwal      2138    1593  0 12:06 ?        00:00:00 /usr/libexec/gvfs-afc-volume-monitor
ujjwal      2146    1593  0 12:06 ?        00:00:00 /usr/libexec/gvfsd-metadata
ujjwal      2154    1802  0 12:06 ?        00:00:00 /usr/libexec/gvfsd-trash --spawner :1.24 /org/gtk/gvfs/exec_spa
ujjwal      2167    1593  0 12:06 ?        00:00:00 /usr/libexec/bluetooth/obexd
ujjwal      2218       1  0 12:06 ?        00:00:02 /usr/bin/qterminal
ujjwal      2228    1593  0 12:06 ?        00:00:00 /usr/libexec/xdg-desktop-portal
ujjwal      2234    1593  0 12:06 ?        00:00:00 /usr/libexec/xdg-permission-store
ujjwal      2243    1593  0 12:06 ?        00:00:00 /usr/libexec/xdg-document-portal
root        2249    2243  0 12:06 ?        00:00:00 fusermount3 -o rw,nosuid,nodev,fsname=portal,auto_unmount,subty
ujjwal      2254    1593  0 12:06 ?        00:00:00 /usr/libexec/xdg-desktop-portal-gtk
ujjwal      2263    2218  0 12:06 pts/0    00:00:02 /usr/bin/zsh
root        6166       2  0 12:13 ?        00:00:00 [kworker/0:1H-kblockd]
root        6665       2  0 12:14 ?        00:00:00 [kworker/u4:0-ext4-rsv-conversion]
root        7214       2  0 12:16 ?        00:00:00 [kworker/u4:2-flush-8:0]
ujjwal      7888    1593  0 12:17 ?        00:00:00 /usr/lib/x86_64-linux-gnu/xfce4/xfconf/xfconfd
root        8260       2  0 12:18 ?        00:00:00 [kworker/0:1-ata_sff]
root       10816       2  0 12:23 ?        00:00:00 [kworker/0:0-ata_sff]
root       12184     344  0 12:26 ?        00:00:00 systemd-userwork: waiting...
root       12185     344  0 12:26 ?        00:00:00 systemd-userwork: waiting...
root       12254     344  0 12:26 ?        00:00:00 systemd-userwork: waiting...
ujjwal     12331    2263  0 12:26 pts/0    00:00:00 ps -ef
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ pstree
systemd─┬─ModemManager───3*[{ModemManager}]
        ├─NetworkManager───3*[{NetworkManager}]
        ├─3*[VBoxClient───VBoxClient───3*[{VBoxClient}]]
        ├─VBoxClient───VBoxClient───4*[{VBoxClient}]
        ├─VBoxDRMClient───5*[{VBoxDRMClient}]
        ├─VBoxService───8*[{VBoxService}]
        ├─accounts-daemon───3*[{accounts-daemon}]
        ├─agetty
        ├─colord───3*[{colord}]
        ├─containerd───7*[{containerd}]
        ├─containerd-shim─┬─nginx───nginx
        │                 └─10*[{containerd-shim}]
        ├─containerd-shim─┬─python
        │                 └─11*[{containerd-shim}]
        ├─containerd-shim─┬─uvicorn
        │                 └─10*[{containerd-shim}]
        ├─cron
        ├─dbus-daemon
        ├─dhcpcd─┬─dhcpcd───3*[dhcpcd]
        │        └─2*[dhcpcd]
        ├─dockerd─┬─4*[docker-proxy───4*[{docker-proxy}]]
        │         └─11*[{dockerd}]
        ├─haveged
        ├─lightdm─┬─Xorg───{Xorg}
        │         ├─lightdm─┬─xfce4-session─┬─Thunar───4*[{Thunar}]
        │         │         │               ├─agent───3*[{agent}]
        │         │         │               ├─applet.py
        │         │         │               ├─blueman-applet───5*[{blueman-applet}]
        │         │         │               ├─nm-applet───5*[{nm-applet}]
        │         │         │               ├─polkit-mate-aut───4*[{polkit-mate-aut}]
        │         │         │               ├─xautoresize
        │         │         │               ├─xfce4-panel─┬─8*[wrapper-2.0───4*[{wrapper-2.0}]]
        │         │         │               │             └─4*[{xfce4-panel}]
        │         │         │               ├─xfce4-power-man───4*[{xfce4-power-man}]
        │         │         │               ├─xfce4-screensav───4*[{xfce4-screensav}]
        │         │         │               ├─xfdesktop───4*[{xfdesktop}]
        │         │         │               ├─xfsettingsd───5*[{xfsettingsd}]
        │         │         │               ├─xfwm4───5*[{xfwm4}]
        │         │         │               ├─xiccd───3*[{xiccd}]
        │         │         │               └─4*[{xfce4-session}]
        │         │         └─3*[{lightdm}]
        │         └─3*[{lightdm}]
        ├─polkitd───3*[{polkitd}]
        ├─qterminal─┬─zsh───pstree
        │           └─6*[{qterminal}]
        ├─rtkit-daemon───2*[{rtkit-daemon}]
        ├─ssh-agent
        ├─sshd
        ├─systemd─┬─(sd-pam)
        │         ├─at-spi-bus-laun─┬─dbus-daemon
        │         │                 └─4*[{at-spi-bus-laun}]
        │         ├─at-spi2-registr───3*[{at-spi2-registr}]
        │         ├─dbus-daemon
        │         ├─dconf-service───3*[{dconf-service}]
        │         ├─gnome-keyring-d───4*[{gnome-keyring-d}]
        │         ├─gpg-agent───{gpg-agent}
        │         ├─gvfs-afc-volume───4*[{gvfs-afc-volume}]
        │         ├─gvfs-goa-volume───3*[{gvfs-goa-volume}]
        │         ├─gvfs-gphoto2-vo───3*[{gvfs-gphoto2-vo}]
        │         ├─gvfs-mtp-volume───3*[{gvfs-mtp-volume}]
        │         ├─gvfs-udisks2-vo───4*[{gvfs-udisks2-vo}]
        │         ├─gvfsd─┬─gvfsd-trash───4*[{gvfsd-trash}]
        │         │       └─3*[{gvfsd}]
        │         ├─gvfsd-fuse───6*[{gvfsd-fuse}]
        │         ├─gvfsd-metadata───3*[{gvfsd-metadata}]
        │         ├─mpris-proxy
        │         ├─obexd───4*[{obexd}]
        │         ├─pipewire───2*[{pipewire}]
        │         ├─pipewire───{pipewire}
        │         ├─pipewire-pulse───2*[{pipewire-pulse}]
        │         ├─wireplumber───5*[{wireplumber}]
        │         ├─2*[xdg-desktop-por───5*[{xdg-desktop-por}]]
        │         ├─xdg-document-po─┬─fusermount3
        │         │                 └─7*[{xdg-document-po}]
        │         ├─xdg-permission-───3*[{xdg-permission-}]
        │         ├─xfce4-notifyd───4*[{xfce4-notifyd}]
        │         └─xfconfd───3*[{xfconfd}]
        ├─systemd-journal
        ├─systemd-logind
        ├─systemd-udevd
        ├─systemd-userdbd───3*[systemd-userwor]
        ├─udisksd───6*[{udisksd}]
        ├─upowerd───3*[{upowerd}]
        └─xcape───{xcape}
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ cd ..
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop]
└─$ tar -czvf company-devops-platform.tar.gz company-devops-platform
company-devops-platform/
company-devops-platform/policies/
company-devops-platform/backup/
company-devops-platform/backup/20260512_122205_pipeline.yaml
company-devops-platform/backup/20260512_122205_deployment.yaml
company-devops-platform/backup/20260512_122205_security.conf
company-devops-platform/configs/
company-devops-platform/configs/deployment.yaml
company-devops-platform/configs/pipeline.yaml
company-devops-platform/configs/security.conf
company-devops-platform/reports/
company-devops-platform/deployments/
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop]
└─$ ls
actions-runner         company-devops-platform         hash.txt          Sentinel_IDS    zphisher
BEACH.png              company-devops-platform.tar.gz  linux_assignment  syslog.tgz
capture_og0oXNg.pcap   devops                          New               Temp
challenge_Lv4JqPM.png  devsecops_ids_fixed_project     newfolder         traffic.pcapng
challenge.png          devsecops-ids-project           newproject        var
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop]
└─$ cd company-devops-platform
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ git init                                          
hint: Using 'master' as the name for the initial branch. This default branch name
hint: will change to "main" in Git 3.0. To configure the initial branch name
hint: to use in all of your new repositories, which will suppress this warning,
hint: call:
hint:
hint:   git config --global init.defaultBranch <name>
hint:
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint:
hint:   git branch -m <name>
hint:
hint: Disable this message with "git config set advice.defaultBranchName false"
Initialized empty Git repository in /home/ujjwal/Desktop/company-devops-platform/.git/
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ touch README.md
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ git add .
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ git commit -m "Linux Administration &amp; User Management completed"
[master (root-commit) ace7f1c] Linux Administration &amp; User Management completed
 7 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 README.md
 create mode 100644 backup/20260512_122205_deployment.yaml
 create mode 100644 backup/20260512_122205_pipeline.yaml
 create mode 100644 backup/20260512_122205_security.conf
 create mode 100644 configs/deployment.yaml
 create mode 100644 configs/pipeline.yaml
 create mode 100644 configs/security.conf
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ git branch development                                              
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ git branch staging    
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ git branch production
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ git branch           
  development
* master
  production
  staging
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ git remote add origin https://github.com/Ujjwal5619P/devops-cicd-security-platform.git
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ git branch -M main                                                                    
                                                                                                                   
┌──(ujjwal㉿vbox)-[~/Desktop/company-devops-platform]
└─$ git branch        
  development
* main
  production
  staging


## 🔄 CI/CD Pipeline Flow

1. Source Code Checkout
2. Build Stage
3. Test Execution
4. Security Validation
5. OPA Policy Check
6. Artifact Generation
7. Deployment Stage

---

## 🌿 Git Branching Strategy

- `main` → Stable production code
- `development` → Active development (CI trigger branch)
- `staging` → Testing environment
- `production` → Deployment environment

---

## 🔐 OPA Security Policies

Implemented rules:
- No root user deployment
- No privileged containers
- No latest image tags
- Enforced secure deployment configurations

Location:
policies/


---

## 📊 Reports Generated

### CI/CD Reports

artifacts/


### SonarQube Reports

reports/sonarqube/


### OPA Validation Reports

reports/opa/


---

## 🚀 CI/CD Trigger
- Automatically triggers on push to `development` branch
- Separate workflow for `production` branch deployment

---

## 🔁 Features Implemented
✔ Linux user & group management  
✔ Git branching & merge conflict resolution  
✔ CI/CD automation  
✔ Static code analysis integration  
✔ Policy-based security enforcement  
✔ Artifact generation  
✔ Rollback mechanism (conceptual)  

---

## 👨‍💻 Author
DevOps Security Pipeline Project (Student Implementation)
