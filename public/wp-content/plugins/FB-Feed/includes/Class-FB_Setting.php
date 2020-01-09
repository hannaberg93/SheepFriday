<?php
class FB_Feed_SettingsPage
{
    /**
     * Holds the values to be used in the fields callbacks
     */
    private $options;

    /**
     * Start up
     */
    public function __construct()
    {
        add_action( 'admin_menu', array( $this, 'add_plugin_page' ) );
        add_action( 'admin_init', array( $this, 'page_init' ) );
    }

    /**
     * Add options page
     */
    public function add_plugin_page()
    {
        // This page will be under "Settings"
        add_options_page(
            'Settings Admin', 
            __('Facebook Feed Settings', 'fb-feed'), 
            'manage_options', 
            'my-setting-admin', 
            array( $this, 'create_admin_page' )
        );
    }

    /**
     * Options page callback
     */
    public function create_admin_page()
    {
        // Set class property
        $this->options = get_option( 'fb_feed_options' );
        ?>
        <div class="wrap">
            <h1><?php _e('Facebook Feed Settings', 'fb-feed') ?></h1>
            <form method="post" action="options.php">
            <?php
                // This prints out all hidden setting fields
                settings_fields( 'fb_feed_group' );
                do_settings_sections( 'my-setting-admin' );
                submit_button();
            ?>
            </form>
        </div>
        <?php
    }

    /**
     * Register and add settings
     */
    public function page_init()
    {        
        register_setting(
            'fb_feed_group', // Option group
            'fb_feed_options', // Option name
            array( $this, 'sanitize' ) // Sanitize
        );

        add_settings_section(
            'setting_section_id', // ID
            __('Facebook Feed Settings', 'fb-feed'), // Title
            array( $this, 'print_section_info' ), // Callback
            'my-setting-admin' // Page
        );  

        add_settings_field(
            'accesstoken', 
            'Accesstoken', 
            array( $this, 'accesstoken_callback' ), 
            'my-setting-admin', 
            'setting_section_id'
        );
        
        add_settings_field(
            'facebook_url', // ID
            'Facebook URL', // Title 
            array( $this, 'url_callback' ), // Callback
            'my-setting-admin', // Page
            'setting_section_id' // Section           
        );

        add_settings_field(
            'id', 
            'ID', 
            array( $this, 'id_callback' ), 
            'my-setting-admin', 
            'setting_section_id'
        );

        add_settings_field(
            'secret', 
            'Secret', 
            array( $this, 'secret_callback' ), 
            'my-setting-admin', 
            'setting_section_id'
        );
    }

    /**
     * Sanitize each setting field as needed
     *
     * @param array $input Contains all settings fields as array keys
     */
    public function sanitize( $input )
    {
        if( isset( $input['accesstoken'] ) )
            $new_input['accesstoken'] = sanitize_text_field( $input['accesstoken'] );

        if( isset( $input['facebook_url'] ) )
            $new_input['facebook_url'] = sanitize_text_field( $input['facebook_url'] );
        
        if( isset( $input['id'] ) )
            $new_input['id'] = sanitize_text_field( $input['id'] );
        
        if( isset( $input['secret'] ) )
            $new_input['secret'] = sanitize_text_field( $input['secret'] );

        return $new_input;
    }

    /** 
     * Print the Section text
     */
    public function print_section_info()
    {
        _e("Enter your settings below:","fb-feed");
    }

    /** 
     * Get the settings option array and print one of its values
     */
    public function accesstoken_callback()
    {
        printf(
            '<input type="text" id="accesstoken" name="fb_feed_options[accesstoken]" value="%s" />',
            isset( $this->options['accestoken'] ) ? esc_attr( $this->options['accesstoken']) : ''
        );
    }

    public function url_callback()
    {
        printf(
            '<input type="text" id="facebook_url" name="fb_feed_options[facebook_url]" value="%s" />',
            isset( $this->options['facebook_url'] ) ? esc_attr( $this->options['facebook_url']) : ''
        );
    }

    public function id_callback()
    {
        printf(
            '<input type="text" id="id" name="fb_feed_options[id]" value="%s" />',
            isset( $this->options['id'] ) ? esc_attr( $this->options['id']) : ''
        );
    }

    public function secret_callback()
    {
        printf(
            '<input type="text" id="secret" name="fb_feed_options[secret]" value="%s" />',
            isset( $this->options['secret'] ) ? esc_attr( $this->options['secret']) : ''
        );
    }
}

if( is_admin() )
    $my_settings_page = new FB_Feed_SettingsPage();