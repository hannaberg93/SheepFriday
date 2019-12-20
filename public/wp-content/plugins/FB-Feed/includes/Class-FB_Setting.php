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
            'Facebook Feed Settings', 
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
        $this->options = get_option( 'token' );
        ?>
        <div class="wrap">
            <h1>Facebook Feed Settings</h1>
            <form method="post" action="options.php">
            <?php
                // This prints out all hidden setting fields
                settings_fields( 'my_option_group' );
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
            'my_option_group', // Option group
            'token', // Option name
            array( $this, 'sanitize' ) // Sanitize
        );

        add_settings_section(
            'setting_section_id', // ID
            'Facebook Feed Settings', // Title
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
        
        return $new_input;
    }

    /** 
     * Print the Section text
     */
    public function print_section_info()
    {
        print 'Enter your settings below:';
    }

    /** 
     * Get the settings option array and print one of its values
     */
    public function accesstoken_callback()
    {
        printf(
            '<input type="text" id="accesstoken" name="token[accesstoken]" value="%s" />',
            isset( $this->options['accestoken'] ) ? esc_attr( $this->options['accesstoken']) : ''
        );
    }

    public function url_callback()
    {
        printf(
            '<input type="text" id="facebook_url" name="token[facebook_url]" value="%s" />',
            isset( $this->options['facebook_url'] ) ? esc_attr( $this->options['facebook_url']) : ''
        );
    }
}

if( is_admin() )
    $my_settings_page = new FB_Feed_SettingsPage();