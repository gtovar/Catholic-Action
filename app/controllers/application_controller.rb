class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :panel_overview

  private

  def panel_overview
    @notices = Notice.all
    @pages = Page.all
  end

end
