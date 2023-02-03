#!/usr/bin/env bash
systemctl start httpd
php artisan migrate
php artisan config:cache
php artisan config:clear