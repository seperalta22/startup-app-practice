require "rails_helper"

RSpec.describe "Accounts", type: :request do
  login_user

  describe "GET #new" do
    it "returns http success" do
      get "/accounts/new"
      expect(response).to have_http_status(:success)
    end

    it "renders the new template" do
      get "/accounts/new"
      expect(response).to render_template :new
    end
  end

  describe "POST #create" do
    it "creates an account" do
      post "/accounts", params: { account: FactoryBot.attributes_for(:account) }
      expect(response).to redirect_to root_path
    end

    it "renders :new on failure" do
      post "/accounts", params: { account: FactoryBot.attributes_for(:account, { name: nil }) }
      expect(response).to render_template :new
    end
  end
end
