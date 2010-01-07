# Uninstall hook code here
require 'fileutils'

PUBLIC = File.join Rails.root, "public"
CSS = File.join PUBLIC, "stylesheets"
JS = File.join PUBLIC, "javascripts", "jquery.fancy_box"
IMGS = File.join PUBLIC, "images", "fancy_box"
FANCY_BOX_PATH = File.join Rails.root, "vendor", "plugins", "fancy_box_rails_plugin"

# Install css
css_files = Dir.glob(File.join(CSS, "*.fancybox.css"))
FileUtils.rm css_files

# Install javascript
FileUtils.rm_rf JS

# Install images
FileUtils.rm_rf IMGS

