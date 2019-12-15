<?php
/* Template Name: FAQ page */
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package understrap
 */
// Exit if accessed directly.
defined( 'ABSPATH' ) || exit;

// Get all ads
$ads = new WP_Query([
	'post_type' => 'sheep_ad',
	'orderby' => 'date',
  'order' => 'asc',
]);

$adsCount = count($ads->posts);

$adIndexesToShow = [];
$adsToShow = [];

// Select 2 random ads to show
while (count($adIndexesToShow) < 2) {
  $postIndex = rand(0, $adsCount -1);
  if ( ! in_array($postIndex, $adIndexesToShow)) {
    $adIndexesToShow[] = $postIndex;
    $adsToShow[] = $ads->posts[$postIndex]->ID;
  }
}
?>

<?php if ($ads->have_posts()) : ?>

  <div class="sheep_ads_container">
    <div class="container">
      <div class="row justify-content-center">

        <?php while ($ads->have_posts()) {
          $ads->the_post();
          foreach ($adsToShow as $adID) {
            if ( get_the_ID() === $adID ) {
              wc_get_template_part( 'loop/ad' );
            }
          }
        } ?>


      </div><!-- .row -->
    </div><!-- .container -->
  </div><!-- .sheep_ads_container -->

<?php wp_reset_postdata(); ?>
  
<?php endif;