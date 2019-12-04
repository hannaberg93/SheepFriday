<?php

function get_something_from_api() {
  $response = wp_remote_get('https://swapi.co/api/films/');
  $body = json_decode($response['body']);
  return $body;
}