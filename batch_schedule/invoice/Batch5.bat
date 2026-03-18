cd c:\
cd %~dp0\..\..
cls
php artisan api:invoice --sales-office="800100" --company="BMI" --date-from="2025-11-26" --is-auto=1
timeout /t 5 /nobreak
