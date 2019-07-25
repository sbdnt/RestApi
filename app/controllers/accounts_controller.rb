class AccountsController < ApplicationController
	before_action :set_account, only: [:render_detail]
  def render_detail
  	render json: @account.render_detail
  end
  

  private

  def set_account
    @account = Account.find_by(id:params[:id])
    if @account.blank?
    	render json: {
      status: false,
      message: 'Not found'
    	}, 
    	status: :not_found
    end
  end
end
