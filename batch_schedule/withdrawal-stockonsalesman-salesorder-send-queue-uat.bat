cd c:\
cd %~dp0\..
cls
php artisan api:WithdrawStockSalesOrder --company="BII Live" --sales-office="750300"
TIMEOUT /T 10