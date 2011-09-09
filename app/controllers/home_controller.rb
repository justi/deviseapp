class HomeController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
  end

  def admin_panel_index
    @users = User.order(sort_column + " " + sort_direction)
  end

  private

  def sort_column
    User.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
