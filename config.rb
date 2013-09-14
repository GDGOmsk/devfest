###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

sprockets.append_path File.join(File.expand_path(File.dirname(__FILE__)), 'vendor/assets')

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'


# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :minify_html

  activate :asset_hash

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

# Reload the browser automatically whenever files change
activate :livereload

# Pretty URLs
activate :directory_indexes

# It's necessary because of this
# https://github.com/neo/middleman-gh-pages#project-page-path-issues
activate :relative_assets
set :relative_links, true
