Refinery::Videos.configure do |config|
    #Configures the maximum allowed upload size (in bytes) for an video file
    #config.max_file_size = 524288000

    # Configure how many videos per page should be displayed in the list of images in the admin area
    #config.pages_per_admin_index =  20

    # Configure white-listed mime types for validation
    #config.whitelisted_mime_types = ["video/mp4", "video/x-flv", "application/ogg", "video/webm", "video/flv", "video/ogg"]
	
    # Configure skin. Put css class name to activate skin. For YouTube like skin put tubecss and add css with images to assets path.
    # config.skin_css_class = vjs-default-skin

    # Configure Dragonfly
    # This is where in the middleware stack to insert the Dragonfly middleware
    # config.dragonfly_insert_before = ActionDispatch::Callbacks
    # config.dragonfly_secret = 7e24e83093667207658556ddbd33eb141af29c3c1ed3566d
    # If you decide to trust file extensions replace :ext below with :format
    # config.dragonfly_url_format = /system/videos/:job/:basename.:format
    # config.datastore_root_path = /Users/brad/Code/soccer5s/public/system/refinery/videos
    # config.trust_file_extensions = false

end
