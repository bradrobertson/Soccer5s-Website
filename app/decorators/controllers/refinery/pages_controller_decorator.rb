Refinery::PagesController.class_eval do

  def nested?
    page.parent_id.present?
  end
  helper_method :nested?

  def pages_for_section
    nested? ? page.parent.children : []
  end
  helper_method :pages_for_section

  def carousel?
    page.home? && page.children.present?
  end
  helper_method :carousel?

  # There's the Not Found page nested under here that *isn't* deletable
  # the rest of the carousel pages should be deletable
  def carousel_items
    @carousel_items ||= page.children.select(&:deletable?)
  end
  helper_method :carousel_items
end

Refinery::PagesController.helper(Refinery::Blog::PostsHelper)