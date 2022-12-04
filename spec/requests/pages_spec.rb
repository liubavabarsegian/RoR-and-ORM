require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /form" do
    it "returns http success" do
      get "/pages/form"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /input" do
    it "returns http success" do
      get "/pages/input"
      expect(response).to have_http_status(:success)
    end
  end

end
