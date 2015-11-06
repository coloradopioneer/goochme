class PagesController < ApplicationController
  def home
  end

  def login
  	@nav_true = false
  	@footer_true = false
  end

  def about

  end
end