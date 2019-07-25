class UsersController < ApplicationController
  before_action :set_user, only: [:render_detail, :render_accounts]
  
  def render_detail
  	render json: @user.render_detail
  end

  def render_accounts
  	render json: @user.render_accounts
  end

  private

  def set_user
    @user = User.find_by(id: params[:id])
    if @user.blank?
    	render json: {
      status: false,
      message: 'Not found'
    	}, 
    	status: :not_found
    end
  end
end
