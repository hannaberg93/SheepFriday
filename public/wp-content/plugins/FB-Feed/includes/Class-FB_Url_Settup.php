<?php
class FB_url_settup{

    protected $feedLimit;
    protected $fields;
    protected $subFields;
    protected $url = "/" . FACEBOOK_URL . "/?fields=";

    public function __construct($feedLimit, $fields, $subFields){
        $this->feedLimit = $feedLimit;
        $this->fields = $fields;
        $this->subFields = $subFields;
    }

    public function convert_to_url($feedLimit,$fields,$subFields){
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
                    //if last item.
                    $this->url .=  $field;
                    // if subfields are set.
                    if ($subFields){
                        $this->url .= $this->set_subFields($subFields);
                    }
                    $i++;
                }
                else{
                    //if not first or last, just append field variable with a comme.
                    $this->url .=  $field . ",";
                    $i++;
                }
            }
            //after loop is done end with a }
            $this->url .= "}";
        }
        else{
            $this->url .= "feed.limit(". $feedLimit ."){message}";
        }
        return $this->url . ",picture,name"; // needed for getting the name and "profile picture" of facebook page (could possibly be improved if time allows)
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
