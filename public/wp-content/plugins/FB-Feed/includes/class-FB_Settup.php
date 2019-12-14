<?php
class FB_settup{

    protected $feedLimit;
    protected $fields;
    protected $subFields;
    protected $accessToken;
    protected $url = "/sheepfriday/?fields=";//feed.limit"('. $feedLimit .'){message,attachments,created_time{subattachments,media}},picture,name";

    public function __construct($feedLimit, $fields, $subFields, $accessToken){
        $this->feedLimit = $feedLimit;
        $this->fields = $fields;
        $this->subFields = $subFields;
        $this->accessToken = $accessToken;
    }

    public function set_fields($feedLimit,$fields,$subFields){
        if ($feedLimit && $fields){
            $i = 0;
            $len = count($fields);
            foreach ($fields as $field) {
                if ($i == 0){
                    //if is first don't start with a ,
                    $this->url .= "feed.limit(". $feedLimit .")" . "{" . $field . ",";
                    $i++;
                }
                else if($i == $len -1){
                    $this->url .=  $field;
                    // if subfields are set
                    if ($subFields){
                        $this->url .= $this->set_subFields($subFields);
                    }
                    $i++;
                }
                else{
                    $this->url .=  $field . ",";
                    $i++;
                }
            }
            $this->url .= "}";
        }
        else{
            $this->url .= "feed.limit('. $feedLimit .'){message}";
        }
        return $this->url . ",picture,name";
    }

    public function set_subFields($subFields){
        $i = 0;
        $len = count($subFields);
            foreach ($subFields as $subField) {
                if ($i == 0){
                    //if is first don't start with a ,
                    $this->subField = "{" . $subField . ",";
                    $i++;
                }
                else if($i == $len -1){
                    //if is last don't end with a , and close using }
                    $this->subField .= $subField . "}";
                }
                else{
                    $this->subField .= $subField . ",";
                    $i++;
                }
            }
            return $this->subField;
    }
}

define("FB_APP_ID", "");
define("FB_APP_SECRET", "48403dbaeba50a4d7f926016e957610f");
//define("FB_ACCESS_TOKEN", "");
