INSTALL = /usr/bin/install
DEST = $(DESTDIR)usr/share/m17n
ICONDEST = $(DESTDIR)usr/share/m17n/icons
LOCALEDEST = $(DESTDIR)usr/share/i18n/locales

install:
	$(INSTALL) -dm755 $(DEST)
	$(INSTALL) -dm755 $(ICONDEST)
	$(INSTALL) -dm755 $(LOCALEDEST)
	$(INSTALL) -Dm644 *.mim $(DEST)
	$(INSTALL) -Dm644 *.lnm $(DEST)
	$(INSTALL) -Dm644 icons/*.png $(ICONDEST)
	$(INSTALL) -Dm644 cu_RU $(LOCALEDEST)

uninstall:
	rm -f $(ICONDEST)/cu-kbd.png
	rm -f $(ICONDEST)/ru-ext.png
	rm -f $(DEST)/cu-kbd.mim
	rm -f $(DEST)/ru-ext.mim
	rm -f $(DEST)/cu.lnm
	rm -f $(LOCALEDEST)/cu_RU
	localedef --delete-from-archive cu_RU.utf8

