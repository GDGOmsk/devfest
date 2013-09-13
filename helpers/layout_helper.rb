module LayoutHelper

  def nav_link(title, link)
    nav_class = current_page.url == link ? 'active' : ''

    content_tag :li, class: nav_class do
      link_to title, link
    end
  end
end
