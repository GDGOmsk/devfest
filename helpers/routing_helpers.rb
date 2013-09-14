module RoutingHelpers
  # Here you can define the routes of your site
  #
  # Notice: any change requires server restart
  @routes = %w(index agenda)

  @routes.each do |method|
    define_method("#{method}_path") { page_path(method) }
  end

  # Return where the current page is equal to specified link
  def current_page?(link)
    "#{page_url_prefix}#{current_page.url}" == link
  end

  # Returns the url of specified page
  def page_path(page)
    if page != 'index'
      "#{page_url_prefix}/#{page}/"
    else
      "#{page_url_prefix}/"
    end
  end

  private

  # In else block you need to define the name of the project on github
  # if you host you site on github without custom url
  def page_url_prefix
    if development?
      ''
    else
      ''
    end
  end
end
