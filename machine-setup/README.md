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
## credentials
```
sudo nano /home/pi/.smbcredentials
```
Add
```
username=pi
password=<password>
```
## fstab
```
mkdir /home/pi/data
sudo nano /etc/fstab
```
Add  
(Replace <IP> with the IP Address of the samba server)  
(Replace <Share> with the share name)

```
//<IP>/<Share> /home/pi/data   cifs    credentials=/home/pi/.smbcredentials,x-systemd.after=wait-for-ping.service      0       0
```