<?php

namespace App\Services;
use MailchimpMarketing\ApiClient;

class Newsletter{

    public function __construct(protected Apiclient $client)
    {
        # code...
    }
    public function subscribe($email, $list=null)
    {
         $list??=config('services.mailchimp.list_id');
 
         


    return  $response = $this->client->lists->addListMember($list, [
        "email_address" => $email,
        "status" => "subscribed",
    ]);
    }

   

}