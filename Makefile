INSTALL = /usr/bin/install -m 644
DEST = /usr/share/m17n
ICONDEST = /usr/share/m17n/icons

install:
	$(INSTALL) *.mim $(DEST)
	$(INSTALL) *.lnm $(DEST)
	$(INSTALL) icons/*.png $(ICONDEST)

uninstall:
	rm -f $(ICONDEST)/cu-kbd.png
	rm -f $(DEST)/cu-kbd.mim
	rm -f $(DEST)/cu.lnm

