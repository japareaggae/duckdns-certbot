duckdns-certbot
=====

A shell script and some systemd units to automate getting certificates
from Let's Encrypt when you're using Duck DNS and your local ISP is
blocking all common service ports, so you need to use Certbot's DNS
challenge.

This repository has been archived since as of 2022, there is now a Certbot
plugin that integrates it with Duck DNS:
[infinityofspace/certbot_dns_duckdns](https://github.com/infinityofspace/certbot_dns_duckdns).
However, this script might still be useful in a pinch.

Usage
-----

1. `make install`
2. Edit /usr/local/lib/systemd/system/certbot-renew.service, replacing
YOUR\_DOMAIN with your actual domain
3. Edit /etc/duckdns-token, adding your Duck DNS token
4. Enable certbot-renew.timer
