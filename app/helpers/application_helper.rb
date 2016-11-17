module ApplicationHelper
  def logged_in?
    session[:current_user_id] != nil
  end

  def current_user
    @_cached_user ||= User.find(session[:current_user_id]) if logged_in?
  end

  def logged_in_user?(user)
    user == current_user
  end
end
