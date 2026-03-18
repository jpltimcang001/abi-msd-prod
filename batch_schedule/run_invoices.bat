cd c:\
cd %~dp0\..
cls
php artisan api:invoice --sales-office="710100" --company="BII Live" --date-from="2026-03-18" --is-auto=1
php artisan api:invoice --sales-office="750300" --company="BII Live" --date-from="2026-03-18" --is-auto=1
php artisan api:invoice --sales-office="710200" --company="BII Live" --date-from="2026-03-18" --is-auto=1
php artisan api:invoice --sales-office="750200" --company="BII Live" --date-from="2026-03-18" --is-auto=1
php artisan api:invoice --sales-office="780500" --company="BMI" --date-from="2026-03-18" --is-auto=1
php artisan api:invoice --sales-office="780800" --company="BMI" --date-from="2026-03-18" --is-auto=1
php artisan api:invoice --sales-office="780900" --company="BMI" --date-from="2026-03-18" --is-auto=1
php artisan api:invoice --sales-office="790500" --company="BMI" --date-from="2026-03-18" --is-auto=1
php artisan api:invoice --sales-office="800100" --company="BMI" --date-from="2026-03-18" --is-auto=1
timeout /t 5 /nobreak
