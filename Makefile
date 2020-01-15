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
	# To create debian package run debuild -uc -us --lintian-opts --profile debian

clean:
	# THIS IS THE SAFE WAY TO REMOVE
	rm -fr $(DEST)/cu-kbd.mim
	rm -fr $(DEST)/cu-znamstd.mim
	rm -fr $(DEST)/cu-znamprklht.mim
	rm -fr $(DEST)/cu-glag.mim
	rm -fr $(DEST)/ru-ext.mim
	rm -fr $(DEST)/ru-phonext.mim
	rm -fr $(DEST)/cu.lnm
	rm -fr $(ICONDEST)/cu-kbd.png
	rm -fr $(ICONDEST)/cu-glag.png
	rm -fr $(ICONDEST)/cu-znamstd.png
	rm -fr $(ICONDEST)/cu-znamprklht.png
	rm -fr $(ICONDEST)/ru-ext.png
	rm -fr $(ICONDEST)/ru-phonext.png
	rm -fr $(LOCALEDEST)/cu_RU 
#	rmdir $(ICONDEST)
#	rmdir $(LOCALEDEST)
#	rmdir $(DEST)
#	rmdir $(DESTDIR)usr/share/i18n
#	rmdir $(DESTDIR)usr/share
#	rmdir $(DESTDIR)usr/

uninstall:
	localedef --delete-from-archive cu_RU.utf8

