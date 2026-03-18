cd c:\
cd %~dp0\..
cls
php artisan api:invoice --sales-office="710100" --company="BII Live" --date-from="2025-08-08" --is-auto=1
php artisan api:invoice --sales-office="750300" --company="BII Live" --date-from="2025-08-08" --is-auto=1
php artisan api:invoice --sales-office="710200" --company="BII Live" --date-from="2025-08-08" --is-auto=1
php artisan api:invoice --sales-office="750200" --company="BII Live" --date-from="2025-08-08" --is-auto=1
timeout /t 5 /nobreak