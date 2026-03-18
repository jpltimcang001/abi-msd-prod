cd c:\
cd %~dp0\..
cls
php artisan api:NewCustomerRequest --company="BII Live" --sales-office="750300" --is-auto=1 --date-from="2025-12-01"
php artisan api:NewCustomerRequest --company="BII Live" --sales-office="710200" --is-auto=1 --date-from="2025-12-01"
php artisan api:NewCustomerRequest --company="BII Live" --sales-office="750200" --is-auto=1 --date-from="2025-12-01"
php artisan api:NewCustomerRequest --company="BII Live" --sales-office="710100" --is-auto=1 --date-from="2025-12-01"
timeout 10