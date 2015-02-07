INSTALL = /usr/bin/install -m 644
DEST = /usr/share/m17n
ICONDEST = /usr/share/m17n/icons
LOCALEDEST = /usr/share/i18n/locales

install:
	$(INSTALL) *.mim $(DEST)
	$(INSTALL) *.lnm $(DEST)
	$(INSTALL) icons/*.png $(ICONDEST)
	$(INSTALL) cu_RU $(LOCALEDEST)
	localedef -f UTF-8 -i cu_RU cu_RU


uninstall:
	rm -f $(ICONDEST)/cu-kbd.png
	rm -f $(ICONDEST)/ru-ext.png
	rm -f $(DEST)/cu-kbd.mim
	rm -f $(DEST)/ru-ext.mim
	rm -f $(DEST)/cu.lnm
	rm -f $(LOCALEDEST)/cu_RU
	localedef --delete-from-archive cu_RU.utf8

