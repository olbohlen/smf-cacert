INSTALL ?= /usr/gnu/bin/install

all: install 

install: 
	$(INSTALL) -d $(DESTDIR)/usr/share/man/man1m
	$(INSTALL) -d $(DESTDIR)/lib/svc/manifest/system
	$(INSTALL) -d $(DESTDIR)/lib/svc/method
	$(INSTALL) -m 444 svc-cacert.1m $(DESTDIR)/usr/share/man/man1m
	$(INSTALL) -m 444 smf-cacert.xml $(DESTDIR)/lib/svc/manifest/system
	$(INSTALL) -m 555 svc-cacert $(DESTDIR)/lib/svc/method/svc-cacert

clean:
	rm -rf $(DESTDIR)
