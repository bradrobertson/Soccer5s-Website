module ApplicationHelper
  
  def section
    controller_name.underscore
  end
  
  def page
    action_name.underscore
  end
end
