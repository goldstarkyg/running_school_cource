<?php 
return [ 
    'client_id' => env('PAYPAL_CLIENT_ID',''),
    'secret'    => env('PAYPAL_SECRET',''),
    'currency'  => env('PAYPAL_CURRENCY','USD'),
    'unit'      => env('PAYPAL_UNIT','$'),
    'settings'  => array(
        'mode'  => env('PAYPAL_MODE','sandbox'),
        'http.ConnectionTimeOut' => 30,
        'log.LogEnabled' => true,
        'log.FileName' => storage_path() . '/logs/paypal.log',
        'log.LogLevel' => 'ERROR'
    ),
    'webhooks'  => [
        'payment_sale_completed' => env('PAYPAL_PAYMENT_SALE_COMPLETED_WEBHOOK_ID'),
    ],
];