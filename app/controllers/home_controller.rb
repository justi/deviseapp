class HomeController < ApplicationController
  def index
  end

  def admin_panel_index
    @users = User.order(:email)
  end

end
