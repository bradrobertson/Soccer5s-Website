module ApplicationHelper

  def section
    controller_name.underscore
  end

  def page
    action_name.underscore
  end

  def sidebar
    content_tag :div, id: 'sidebar' do
      content_tag :div, class: 'wrap' do
        content_for :sidebar
      end
    end if content_for? :sidebar
  end

  def sidebar_class
    content_for?(:sidebar) ? 'with-sidebar' : ''
  end

  def main_content(&block)
    content_tag(:div, id: 'main', class: sidebar_class, &block)
  end
end
