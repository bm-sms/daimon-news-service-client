module ApplicationHelper
  def render_meta_tags(title: nil)
    title ||= 'Customized Press'

    content_for :meta_tags do
      render 'meta_tags', title: title
    end
  end
end
