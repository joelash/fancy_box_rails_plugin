# Install hook code here
require 'fileutils'

PUBLIC = File.join Rails.root, "public"
CSS = File.join PUBLIC, "stylesheets"
JS = File.join PUBLIC, "javascripts", "jquery.fancy_box"
IMGS = File.join PUBLIC, "images", "fancy_box"
FANCY_BOX_PATH = File.join Rails.root, "vendor", "plugins", "fancy_box_rails_plugin"

# Install css
css_files = Dir.glob(File.join(FANCY_BOX_PATH, "css", "*.fancybox.css"))
FileUtils.cp_r css_files, CSS

# Install javascript
Dir.mkdir JS unless File.exists?(JS)
js_files = Dir.glob(File.join(FANCY_BOX_PATH,"js","*"))
FileUtils.cp_r js_files, JS

# Install images
Dir.mkdir IMGS  unless File.exists?(IMGS)
imgs = Dir.glob(File.join(FANCY_BOX_PATH,"images","*.{png,gif}"))
FileUtils.cp_r imgs, IMGS
