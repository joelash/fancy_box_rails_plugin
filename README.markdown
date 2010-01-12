FancyBox
--------

FancyBox is a rails plugin wrapper for a jquery plugin wit the same name. It's essentialy installs and gives you helper methods for using in your views. You can find the original documentation at : http://fancy.klade.lv/. Once you install you can also call it from jquery as well.

Installation
------------

* ./script/plugin install <git_url> 
  * this will copy css/js/images all to the correct locations
* somewhere in the head of your page, put <%= include_fancy_box %>

Uninstallation
--------------

* ./script/plugin remove fancy_box_rails_plugin
  * this will remove css/js/images that were added during installation

Usage
-----

To use it for inline content or remote content do:

    link_to_box "Some div", "#some-div"
    #OR
    link_to_box "google", "http://google.com"
    #OR
    link_to_box "some page", "/some/page"
    #OR to override the default fancy_box class
    link_to_box "some box", "#some-box", :box_class => "small" 

NOTE : you can also do:

    link_to "Some div", "#some-div", :class => "fancy"

To use it for inline or remote content with a custom fancy box parameters do:

    link_to_custom_box 'Click me', '/path/to/page', { :hideOnContentClick => false }

To use it for images do:

    link_to_image "special.jpg"
    #OR to add in a caption
    link_to_image "special.jpg", :title => "special image"
    #OR if you want a different thumbnail pic
    link_to_image "special-thumb.jpg:special-big.jpg"

To create an image gallery with fancy boxes do:

    fancy_gallery [array of hashes]
  
    fancy_gallery {:thumb => "first-thumb.jpg", :main => "first.jpg", :title => "first pic"}
      Hash options:
        :thumb => "The thumbnail for the pic",
        :main => "The main picture to open in the fancy box",
        :title => "The title for your picture"

All the methods use standard link_to options, there are just there to save you some precious keystrokes.

NOTE : if you use a base reset css stylesheet, it will not render the caption properly, this might be due to the fact that you have td styled with vertical-align: baseline, MAKE SURE that you find that somewhere in your stylesheet and remove it or comment it out.

fancy_box method
----------------

The fancy_box helper method simply generates an inline div that allows you to add a title as well. 

EXAMPLE : 

     fancy_box :title => "My Special Box" do
       #This is my special box with content
     end

OPTIONS :

    :title => "A title for your fancy_box"
    :title_tag => The tag that will wrap the title, defaults to h3
    :title_options => html options for your title_tag
    :options => standard html options

The fancy_box helper method has been extended to allow you to add a link that'll display the inline content you've created with the method:

EXAMPLE :

     fancy_box_with_link 'Click to see something special', :title => "My Special Box" do
       #This is my special box with content
     end


fancy_box_javascript method
---------------------------
The fancy_box_javascript helper method is a methods that creates inline javascript to will set up elements with <selector> as a fancy box with the provided options

EXAMPLE :

     fancy_box_javascript '.fancy', :hideOnContentClick => false

note on plugin
--------------

Originally, this plugin covered the 80% use case, that basically means that it will help you create fancy boxes using convention over configuration, if you need to configure fancy_box open up load_fancybox.js and add your own settings.

However, I'm working on adding more helper methods that'll cover many of the use cases I come across when I'm using it. If there are cases that have not yet been added, please feel free to let me know.
Credits
-------

* based off of the fancy_box_rails_plugin by : http://github.com/vanntastic/fancy_box_rails_plugin
  * originally based off of the fancy_box jquery plugin by : http://fancy.klade.lv/

Copyright (c) 2010 Joel Friedman, released under the MIT license
