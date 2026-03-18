<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Artisan;

class SyncCustomerOutlet extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'apirun:sync-customer-outlet 
                            {--company= : Company name (e.g. "BII Live")}
                            {--sales-office= : Sales office number}
                            {--salesman= : Salesman code}
                            {--outlet= : Optional. Specific customer/outlet code to sync}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Sync specific salesman and customer/outlet from MS Dynamics';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $company = $this->option('company');
        $sales_office_no = $this->option('sales-office');
        $salesman = $this->option('salesman');
        $outlet = $this->option('outlet');

        if (empty($company) || empty($sales_office_no) || empty($salesman)) {
            $this->error('Required options: --company, --sales-office, and --salesman');
            return 1;
        }

        $data = [
            'company' => $company,
            'sales_office_no' => $sales_office_no,
            'params' => [
                'Salesperson_Code' => $salesman,
            ],
        ];

        if (!empty($outlet)) {
            $data['params']['No'] = $outlet;
        }

        Artisan::call('apirun:send', [
            'type' => 'customer',
            'data' => json_encode($data),
        ]);

        $this->info('Customer sync completed for salesman ' . $salesman . (!empty($outlet) ? ' and outlet ' . $outlet : ''));
        return 0;
    }
}
