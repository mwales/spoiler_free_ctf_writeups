FROM php:7-apache-bullseye

RUN cd /var/www/html; curl --remote-name https://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz

RUN cd /var/www/html; tar -xzvf dokuwiki-stable.tgz --strip-components=1; echo dokuwiki-stable.tgz

RUN chown -R www-data:www-data /var/www

COPY doku_config_files/local.php doku_config_files/plugins.local.php /var/www/html/conf/
RUN chown www-data:www-data /var/www/html/conf/local.php  /var/www/html/conf/plugins.local.php
RUN chmod 0644 /var/www/html/conf/local.php /var/www/html/conf/plugins.local.php

# Install the default users / passwords (you should login and change these!)
COPY doku_config_files/users.auth.php doku_config_files/acl.auth.php /var/www/html/conf/
RUN chown www-data:www-data /var/www/html/conf/users.auth.php /var/www/html/conf/acl.auth.php
RUN chmod 0644 /var/www/html/conf/users.auth.php /var/www/html/conf/acl.auth.php

COPY writeups.html /var/www/html

# Delete the installer so no one else can run it
RUN rm /var/www/html/install.php

# Add the disable actions plugin
# Disable actions plugin URL
# https://github.com/adron1111/disableactionsbygroup/zipball/master

COPY start.txt /var/www/html/data/pages/

# Copy over example writeup
COPY challenge_6f648fe60290f3ff9a8222f15aa90adb.txt challenge_sample_flag_writeup_by_l33t_hackers.txt /var/www/html/data/pages/

RUN chown www-data:www-data /var/www/html/data/pages/*.txt
RUN chmod 0644 /var/www/html/data/pages/*.txt

