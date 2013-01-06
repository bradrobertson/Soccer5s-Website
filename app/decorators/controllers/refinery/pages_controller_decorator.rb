Refinery::PagesController.class_eval do

  def nested?
    page.parent_id.present?
  end
  helper_method :nested?

  def pages_for_section
    nested? ? page.parent.children : []
  end
  helper_method :pages_for_section
end