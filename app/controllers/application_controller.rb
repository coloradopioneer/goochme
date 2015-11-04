class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_nav, :set_footer

  def set_nav
  	@nav_true = true
  end

  def set_footer
  	@footer_true = true
  end

end
