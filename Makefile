INSTALL		:= install
prefix		:= /usr
sbindir		:= $(prefix)/sbin
systemddir	:= /etc/systemd/system
all: insalll
install:
	$(INSTALL) -m 0644 systemd/fan.service $(systemddir)
	$(INSTALL) -m 0644 src/vaio_fancontrol.sh $(sbindir)
	systemctl daemon-reload
	systemctl enable fan.service
	systemctl start fan.service
uninstall:
	systemctl stop fan.service
	systemctl disable fan.service
	rm -f $(sbindir)/vaio_fancontrol.sh
	rm -f $(systemddir)/fan.service