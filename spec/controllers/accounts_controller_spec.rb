require 'rails_helper'

RSpec.describe AccountsController, type: :controller do

  describe "GET #render_detail" do
    it "returns http success" do
      get :render_detail
      expect(response).to have_http_status(:success)
    end
  end

end
