module ApplicationHelper

  # Changes navbar link to 'active' if the link_path
  # is the current page
  def active_class(link_path)
    current_page?(link_path) ? "nav-item active" : "nav-item"
  end

end
