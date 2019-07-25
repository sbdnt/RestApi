require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #get_info," do
    it "returns http success" do
      get :get_info,
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #get_acc_ids," do
    it "returns http success" do
      get :get_acc_ids,
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #render_detail," do
    it "returns http success" do
      get :render_detail,
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #render_user_accounts" do
    it "returns http success" do
      get :render_user_accounts
      expect(response).to have_http_status(:success)
    end
  end

end
