<?php

class FB_Loop{
    protected $content;

    function loop_over_FB_feed($feed,$array){
        
        //used to check if it's the first iteration
        $counter = 0;
        
        foreach ($feed as $item) {

            if ($counter == 0){
                //if it's the first iteration don't append content, instead start the content with an empty string
                $content = "";
                $counter++;
            }

           //if no attachments are set render out only the message
            if (isset($item["message"]) && !isset($item['attachments'])) {
            $content .='<div class="card p-2 mt-2 shadow bg-white rounded">
                            <div class="d-inline">
                                <img src="'. $array['picture']['url'] .'"><h2 class="d-inline ml-2">'.$array['name'].'</h2><hr>
                            </div>
                            <div>
                                <p>' . __($item["message"]) . '</p>
                                <p class="font-italic">' . date('Y jS  F h:i', strtotime($item['created_time']['date'])) . '</p>
                            </div>
                        </div>';
        }

            //check for an image
            elseif (isset($item["message"]) && isset($item['attachments'])){
                //render out message and profile pic
                $content .='<div class="card p-2 mt-2 shadow bg-white rounded d-flex">
                                <div class="d-inline-flex">
                                    <img src="'. $array['picture']['url'] .'"><h2 class="d-inline-flex ml-2">'.$array['name'].'</h2><hr>
                                </div>
                            <div>
                                <p>' . __($item["message"]) . '</p>
                            </div>';

                //Check for several images
                if (isset($item['attachments'][0]['subattachments'])) {
                    $content .= "<div class='row d-inline-flex'>";
                    foreach ($item['attachments'][0]['subattachments'] as $img){
                        $content .= "<div class='col-12 col-md-3'>";
                            $content .= '<img src="' . $img['media']['image']['src'] . '"class="img-fluid mt-4 mb-4 w-45 mx-auto" alt="Postpics">';
                        $content .= "</div>"; //col for img ends here
                    }
                        $content .= "<div class='col-12'><p class='font-italic'>" . date('Y jS  F h:i', strtotime($item['created_time']['date'])) . '</p></div>';
                    $content .= "</div>"; //row ends here
                $content .= "</div>"; //card ends here
                }

                //if only one image
                elseif(isset($item['attachments']) && !isset($item['attachments'][0]['subattachments'])){
                    $content .= '<div class="col-12 col-md-3"><img src="' . $item['attachments'][0]['media']['image']['src'] . '"class="img-responsive mt-4 mb-4 w-75 mx-auto" alt="Postpics"></div>
                    <div class="col-12"><p class="font-italic">' . date('Y jS  F h:i', strtotime($item['created_time']['date'])) . '</p></div></div>';
                }
            }
        }
        return $content;
    }
}
