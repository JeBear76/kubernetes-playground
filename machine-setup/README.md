# Data Drive configuration

## Wait For Pin Service
```
sudo nano /etc/systemd/system/wait-for-ping.service
```
Add  
(Replace <IP> with the IP Address of the samba server)
```
# /etc/systemd/system/wait-for-ping.service
[Unit]
Description=Blocks until it successfully pings <IP>>
After=network-online.target

[Service]
ExecStartPre=/usr/bin/bash -c "while ! ping -c1 <IP>; do sleep 1; done"
ExecStart=/usr/bin/bash -c "echo good to go"
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
```
Then
```
sudo systemctl start wait-for-ping.service
sudo systemctl enable wait-for-ping.service
```

## fstab
```
mkdir /home/pi/data
sudo nano /etc/fstab
```
Add  
(Replace <IP> with the IP Address of the samba server)  
(Replace <Share> with the share name)
(Replace <password> with the password for pi)

```
//<IP>/<Share> /home/pi/data   cifs     username=pi,password=<password>,iocharset=utf8,file_mode=0777,dir_mode=0777,x-systemd.after=wait-for-ping.service      0       0
```