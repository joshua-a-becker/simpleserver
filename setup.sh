sudo cp jsonserver.service /etc/systemd/system
sudo cp jsonserver-restart.service /etc/systemd/system
sudo cp jsonserver-watch.path /etc/systemd/system
sudo cp jsonserver.py /usr/local/bin/jsonserver.py

sudo systemctl daemon-reload
sudo systemctl enable jsonserver.service
sudo systemctl enable jsonserver-watch.path
sudo systemctl start jsonserver.service
sudo systemctl start jsonserver-watch.path

#sudo systemctl status jsonserver
#journalctl -u cors-server