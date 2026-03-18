cd c:\
cd %~dp0\..\..
cls
php artisan api:invoice --sales-office="710200" --company="BII Live" --date-from="2025-11-26" --is-auto=1
php artisan api:invoice --sales-office="750200" --company="BII Live" --date-from="2025-11-26" --is-auto=1
timeout /t 5 /nobreak
