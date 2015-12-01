class PagesController < ApplicationController
  def home
  	redirect_to games_path if logged_in?
  end

  def login
  	@nav_true = false
  	@footer_true = false
  end

  def about

  end

  def rules

  end
end