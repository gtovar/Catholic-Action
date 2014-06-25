class StaticPagesController < ApplicationController
  layout "panel_application", only: :panel
  before_action :authenticate_user!, except: :home 
  def home
  end

  def panel
  end

end
