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

private

  def page_banners
    %w{one two three four five six seven}
  end

  def home_banners
    %w{one two}
  end
end