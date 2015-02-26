require 'rails_helper'

RSpec.describe ProductsController, type: :controller, vcr: true do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
