duckdns-certbot
=====

A shell script and some systemd units to automate getting certificates
from Let's Encrypt when you're using Duck DNS and your local ISP is
blocking all common service ports, so you need to use Certbot's DNS
challenge.

Usage
-----

1. `make install`
2. Edit /usr/local/lib/systemd/system/certbot-renew.service, replacing
YOUR\_DOMAIN with your actual domain
3. Edit /etc/duckdns-token, adding your Duck DNS token
4. Enable certbot-renew.timer


