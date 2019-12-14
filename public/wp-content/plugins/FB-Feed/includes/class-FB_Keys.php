<?php
class FB_Keys{
    protected $appID; 
    protected $appSecret;

    public function __construct($appID, $appSecret){
        $this->appID = $appID;
        $this->appSecret = $appSecret;
    }

    public function set_ID(){
        return $this->appID;
    }

    public function set_Secret(){
        return $this->appSecret;
    }
}