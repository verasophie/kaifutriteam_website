module ApplicationHelper
  def login_helper
    if current_user.is_a? GuestUser
      (link_to "register", new_user_registration_path) +
      "<br>".html_safe +
      (link_to "sign in", new_user_session_path)
    else
      link_to "logout", destroy_user_session_path, method: :delete
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for heading over from #{session[:source]} and you are on the #{layout_name} layout"
      content_tag(:p, greeting, class: "source-greeting")      
    end
  end

  def set_copyright
    VerasViewTool::Renderer.copyright 'Vera', 'Welcome to my page!'
  end

end
