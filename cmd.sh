sudo apt-add-repository ppa:mosquitto-dev/mosquitto-ppa
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install mosquitto mosquitto-clients libmosquitto-dev
sudo ufw allow http
sudo ufw allow 8083
sudo mosquitto_passwd -c /etc/mosquitto/passwd vagrant
echo admin123
echo admin123
sudo echo 'listener 1883' >> /etc/mosquitto/mosquitto.conf
sudo echo 'listener 8083' >> /etc/mosquitto/mosquitto.conf
sudo echo 'protocol websockets' >> /etc/mosquitto/mosquitto.conf
sudo echo 'allow_anonymous false' >> /etc/mosquitto/mosquitto.conf
sudo echo 'password_file /etc/mosquitto/passwd' >> /etc/mosquitto/mosquitto.conf
sudo service mosquitto restart
