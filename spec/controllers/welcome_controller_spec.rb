require 'rails_helper'

RSpec.describe WelcomeController, :type => :controller do

  describe "GET #index" do
    it "accesses tv database API properly to retrieve data" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
