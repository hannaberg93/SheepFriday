<?php

class FB_Connect{
    protected $graphNode;

    public function connect($appID,$appSecret,$endpoint,$accessToken){
        $fb = new Facebook\Facebook([
            'app_id' => $appID, //Use incoming argument as app ID
            'app_secret' => $appSecret, //Use incoming argument as app Secret
            'default_graph_version' => 'v3.1'
        ]);
    
        try {
            $response = $fb->get(
            $endpoint,
            $accessToken
            );
        } catch(Facebook\Exceptions\FacebookResponseException $e) {
            echo 'Graph returned an error: ' . $e->getMessage();
            //if it fails deactivate the plugin to avoid problems with pages where shortcode is active
            deactivate_plugins( plugin_basename( __FILE__ ) );
            exit;
        } catch(Facebook\Exceptions\FacebookSDKException $e) {
            deactivate_plugins( plugin_basename( __FILE__ ) );
            //if it fails deactivate the plugin to avoid problems with pages where shortcode is active
            echo 'Facebook SDK returned an error: ' . $e->getMessage();
            exit;
        }
        $this->graphNode = $response->getGraphNode();
    }
    
    public function get_graphNode(){
        return $this->graphNode;
    }
}