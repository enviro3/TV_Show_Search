#Test each method, make sure firing A

require 'rails_helper'

RSpec.describe TvShowsController, :type => :controller do

  describe "GET #show" do
    it "accesses tv database API properly to show correct tv listing by id" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #search_results" do
    it "accesses tv database API properly to search for tv listings"
    get :search_results
    expect(response).to have_http_status(:success)
  end

end
