module ApplicationHelper

  def section
    controller_name.underscore
  end

  def id
    action_name.underscore
  end

  def page_slug
    @page.slug
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

  def current_league_url
    @current_league_url ||= begin
      page = Refinery::Page.by_slug('current').first
      refinery.url_for page.url_marketable
    end
  end

private

  def home_banners
    (1..6).to_a
  end

  def page_banners
    (1..7).to_a
  end
end
