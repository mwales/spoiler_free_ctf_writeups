<?php
/*
 * Dokuwiki's Main Configuration File - Local Settings
 * Auto-generated originall by config plugin
 * Copied into the docker as part of default config for Spoiler Free CTF Writeups
 */

$conf['title'] = 'CTF Writeups';
$conf['recent'] = 0;
$conf['recent_days'] = 0;
$conf['breadcrumbs'] = 0;
$conf['youarehere'] = 1;
$conf['hidepages'] = '^:(chal*)';
$conf['useacl'] = 1;
$conf['superuser'] = '@admin';
$conf['disableactions'] = 'register,media';
$conf['updatecheck'] = 0;
$conf['plugin']['disableactionsbygroup']['disableactionsbygroup'] = 'admin:;user:media;studentgroup:media';
