RCINITDIR=/etc/rc.d/sysinit.d
RCSHUTDIR=/etc/rc.d/0.d

all:

install:
	install -d $(DESTDIR)$(RCINITDIR)
	install -d $(DESTDIR)$(RCSHUTDIR)
	install -m 750 -T cgroupfs-mount $(DESTDIR)$(RCINITDIR)/70cgroupfs 
	install -m 750 -T cgroupfs-mount $(DESTDIR)$(RCSHUTDIR)/70cgroupfs 
