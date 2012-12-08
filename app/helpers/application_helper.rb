module ApplicationHelper

  def display_login
    if !current_user
      link_to "Log In", new_user_session_path
    else
      link_to "Logout", destroy_user_session_path, :method => :delete
    end
  end
end
