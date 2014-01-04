module ApplicationHelper

  def section
    controller_name.underscore
  end

  def id
    action_name.underscore
  end

  def body(&block)
    content_tag(:div, id: 'body', &block)
  end

  def main(&block)
    content_tag(:section, id: 'main', &block)
  end

  def sidebar(&block)
    content_tag(:section, id: 'sidebar', &block)
  end

  def random_banner
    (home_page? ? home_banners : page_banners).sample
  end

  def random_banner_bg
    "banner-bg-#{random_banner}"
  end

private

  def home_banners
    (1..2).to_a
  end

  def page_banners
    (1..7).to_a
  end
end
