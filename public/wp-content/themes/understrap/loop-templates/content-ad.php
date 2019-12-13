<div class="sheep-ad col-12 col-sm-6 col-lg-4">
  <a class="sheep-ad-link" href="<?php echo get_field('link') ?>">
    <div class="row">
      <div class="col-12 pb-2">
        <img class="img-fluid" src="<?php echo get_the_post_thumbnail_url() ?>">
      </div>
      <div class="col-12">
        <h4 class=""><?php the_title() ?></h4>
        <?php the_content() ?>
      </div>
    </div>
  </a>
</div>