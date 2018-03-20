#!/bin/sh
php exp_user.php > /var/www/html/somos/export/user.csv
php exp_status.php > /var/www/html/somos/export/status.csv
php exp_kind.php > /var/www/html/somos/export/kind.csv
php exp_category.php > /var/www/html/somos/export/category.csv
php exp_project.php > /var/www/html/somos/export/project.csv
php exp_priority.php > /var/www/html/somos/export/priority.csv
php exp_ticket.php > /var/www/html/somos/export/ticket.csv