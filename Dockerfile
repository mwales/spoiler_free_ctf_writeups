FROM php:7-apache-bullseye

RUN cd /var/www/html; curl --remote-name https://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz; \
	tar -xzvf dokuwiki-stable.tgz --strip-components=1; \
	rm dokuwiki-stable.tgz

RUN chown -R www-data:www-data /var/www

COPY --chown=www-data:www-data --chmod=0644 doku_config_files/local.php doku_config_files/plugins.local.php /var/www/html/conf/

# Install the default users / passwords (you should login and change these!)
COPY --chown=www-data:www-data --chmod=0644 doku_config_files/users.auth.php doku_config_files/acl.auth.php /var/www/html/conf/

COPY --chown=www-data:www-data --chmod=0644 writeups.html /var/www/html

# Delete the installer so no one else can run it
RUN rm /var/www/html/install.php

# Add the disable actions plugin
# Disable actions plugin URL
# https://github.com/adron1111/disableactionsbygroup/zipball/master
COPY --chown=www-data:www-data disableactionsbygroup /var/www/html/lib/plugins/disableactionsbygroup

# Copy over initial markdown content / sample pages
COPY --chown=www-data:www-data --chmod=0644 start.txt challenge_6f648fe60290f3ff9a8222f15aa90adb.txt challenge_sample_flag_writeup_by_l33t_hackers.txt /var/www/html/data/pages/

