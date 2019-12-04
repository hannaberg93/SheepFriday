<?php

/**
 * Adds widget.
 */

class SidebarMenu extends WP_Widget {

	/**
	 * Register widget with WordPress.
	 */
	public function __construct() {
		parent::__construct(
			'UID-name-widget', // Base ID
			'UID Name', // Name
			[
				'description' => __('A Widget that does something.', 'UID-name-widget'),
			] // Args
		);
	}

	/**
	 * Front-end display of widget.
	 *
	 * @see WP_Widget::widget()
	 *
	 * @param array $args     Widget arguments.
	 * @param array $instance Saved values from database.
	 */
	public function widget($args, $instance) {
		extract($args);
		$title = apply_filters('widget_title', $instance['title']);

		// start widget
		echo $before_widget;

		// title
		if (! empty($title)) {
			echo $before_title . $title . $after_title;
		}

		// content
      $field_a = $instance['field_a'];
      $field_b = $instance['field_b'];
      $field_c = $instance['field_c'];

      // $content = get_something_from_api();
      // $json_content = json_decode($content);
		?>

			<div class="UID-name-content">
            Loading...<br>
			</div>

      <div class="fields">
        <em>Here I can echo out the fields:</em><br>
        <?php echo $field_a ?><br>
        <?php echo $field_b ?><br>
        <?php echo $field_c ?><br>
      </div>



		<?php

		echo $after_widget;
	}

	/**
	 * Back-end widget form.
	 *
	 * @see WP_Widget::form()
	 *
	 * @param array $instance Previously saved values from database.
	 */
	public function form($instance) {
		if (isset($instance['title'])) {
			$title = $instance['title'];
		} else {
			$title = __('Default Title', 'UID-name-widget');
		}

		if (isset($instance['field_a'])) {
			$field_a = $instance['field_a'];
		} else {
			$field_a = 'Default field A';
      }
      
      if (isset($instance['field_b'])) {
			$field_b = $instance['field_b'];
		} else {
			$field_b = 'Default field B';
      }
      
      if (isset($instance['field_c'])) {
			$field_c = $instance['field_c'];
		} else {
			$field_c = 'Default field C';
		}

		?>

		<!-- title -->
		<p>
			<label
				for="<?php echo $this->get_field_name('title'); ?>"
			>
				<?php _e('Title:'); ?>
			</label>

			<input
				class="widefat"
				id="<?php echo $this->get_field_id('title'); ?>"
				name="<?php echo $this->get_field_name('title'); ?>"
				type="text"
				value="<?php echo esc_attr($title); ?>"
			/>
		</p>
		<!-- /title -->
		<!-- Field A -->
		<p>
			<label
				for="<?php echo $this->get_field_name('field_a'); ?>"
			>
				<?php _e('Field A:'); ?>
			</label>

			<input
				class="widefat"
				id="<?php echo $this->get_field_id('field_a'); ?>"
				name="<?php echo $this->get_field_name('field_a'); ?>"
				type="text"
				value="<?php echo esc_attr($field_a); ?>"
			/>
		</p>
		<!-- /Field A -->
		<!-- Field B -->
		<p>
			<label
				for="<?php echo $this->get_field_name('field_b'); ?>"
			>
				<?php _e('Field B:'); ?>
			</label>

			<input
				class="widefat"
				id="<?php echo $this->get_field_id('field_b'); ?>"
				name="<?php echo $this->get_field_name('field_b'); ?>"
				type="text"
				value="<?php echo esc_attr($field_b); ?>"
			/>
		</p>
		<!-- /Field B -->
		<!-- Field C -->
		<p>
			<label
				for="<?php echo $this->get_field_name('field_c'); ?>"
			>
				<?php _e('Field C:'); ?>
			</label>

			<input
				class="widefat"
				id="<?php echo $this->get_field_id('field_c'); ?>"
				name="<?php echo $this->get_field_name('field_c'); ?>"
				type="text"
				value="<?php echo esc_attr($field_c); ?>"
			/>
		</p>
		<!-- /Field C -->            
	<?php
	}

	/**
	 * Sanitize widget form values as they are saved.
	 *
	 * @see WP_Widget::update()
	 *
	 * @param array $new_instance Values just sent to be saved.
	 * @param array $old_instance Previously saved values from database.
	 *
	 * @return array Updated safe values to be saved.
	 */
	public function update($new_instance, $old_instance) {
		$instance = [];

		$instance['title'] = (!empty($new_instance['title']))
			? strip_tags($new_instance['title'])
			: '';

      $instance['field_a'] = (!empty($new_instance['field_a']))
         // If user has entered data in the field, save that data to the instance
        ? strip_tags($new_instance['field_a'])
         // Otherwise save an empty string
        : '';

      $instance['field_b'] = (!empty($new_instance['field_b']))
        ? strip_tags($new_instance['field_b'])
        : '';
      
      $instance['field_c'] = (!empty($new_instance['field_c']))
        ? strip_tags($new_instance['field_c'])
        : '';

		return $instance;
	}

} // class WeatherWidget