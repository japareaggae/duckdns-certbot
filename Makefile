.PHONY: install uninstall

install:
	install -Dm644 certbot-renew.service /etc/systemd/system/certbot-renew.service
	install -Dm644 certbot-renew.timer /etc/systemd/system/certbot-renew.timer
	install -Dm755 duckdns-certbot /usr/local/lib/duckdns-certbot
	install -Dm600 duckdns-token /etc/duckdns-token

uninstall:
	rm /etc/systemd/system/certbot-renew.service
	rm /etc/systemd/system/certbot-renew.timer
	rm /usr/local/lib/duckdns-certbot
	shred -u /etc/duckdns-token

