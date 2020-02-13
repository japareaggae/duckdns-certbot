.PHONY: install uninstall

install:
	install -Dm644 certbot-renew.service /usr/local/lib/systemd/system/certbot-renew.service
	install -Dm644 certbot-renew.timer /usr/local/lib/systemd/system/certbot-renew.timer
	install -Dm755 duckdns-certbot /usr/local/lib/duckdns-certbot
	install -Dm600 duckdns-token /etc/duckdns-token

uninstall:
	rm /usr/local/lib/systemd/system/certbot-renew.service
	rm /usr/local/lib/systemd/system/certbot-renew.timer
	rm /usr/local/lib/duckdns-certbot
	shred -u /etc/duckdns-token

