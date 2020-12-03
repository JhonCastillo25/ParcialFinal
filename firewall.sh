yum install vim firewalld -y

service NetworkManager stop
chkconfig NetworkManager off

service firewalld start
firewall-cmd --set-default-zone=dmz
firewall-cmd --zone=dmz --add-interface=eth1 --permanent
firewall-cmd --zone=dmz --add-service=http --permanent
firewall-cmd --zone=dmz --add-masquerade --permanent
firewall-cmd --zone=dmz --add-forward-port=port=80:proto=tcp:toport=8080:toaddr=209.191.50.2 --permanent

firewall-cmd --reload
service firewalld restart


