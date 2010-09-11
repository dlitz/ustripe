all:

clean:

install:
	install -m0755 -d $(DESTDIR)/etc/X11/Xsession.d
	install -m0755 -d $(DESTDIR)/lib/udev/rules.d
	install -m0755 -d $(DESTDIR)/usr/bin
	install -m0755 -d $(DESTDIR)/usr/sbin
	install -m0755 -d $(DESTDIR)/var/run/ustripe
	install -m0755 ./ustriped $(DESTDIR)/usr/sbin/ustriped
	install -m0755 ./ustripec $(DESTDIR)/usr/bin/ustripec
	install -m0755 ./ustripe-injectkeys $(DESTDIR)/usr/bin/ustripe-injectkeys
	install -m0755 ./ustripe-x-daemon $(DESTDIR)/usr/bin/ustripe-x-daemon
	install -m0755 ./udev/ustriped-udev $(DESTDIR)/usr/sbin/ustriped-udev
	install -m0755 ./udev/85-ustriped.rules $(DESTDIR)/lib/udev/rules.d/85-ustriped.rules
	install -m0644 ./Xsession.d/90ustripe_start $(DESTDIR)/etc/X11/Xsession.d/90ustripe_start
