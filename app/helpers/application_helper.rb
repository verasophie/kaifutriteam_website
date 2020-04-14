module ApplicationHelper
  def login_helper style = ''
    if current_user.is_a? GuestUser
      (link_to "register", new_user_registration_path, class: style) +
      " ".html_safe +
      (link_to "sign in", new_user_session_path, class: style)
    else
      link_to "logout", destroy_user_session_path, method: :delete, class: style
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for heading over from #{session[:source]} and you are on the #{layout_name} layout"
      content_tag(:p, greeting, class: "source-greeting")      
    end
  end

  def set_copyright
    VerasViewTool::Renderer.copyright 'Kaifu Tri Team', 'Do what you love. Together.'
  end

end
