require 'rails_helper'

RSpec.describe TvShowsController, :type => :controller do

  describe "GET #show" do
    it "accesses tv database API properly to show correct tv listing by id" do
      get :show
      expect(response).to have_http_status(:success)
    end

    it "properly loads data for a show" do
      get :show, params: {id: 1412}
      expect(response).to have_http_status(:success)
    end

  end

  describe "GET #search_results" do
    it "accesses tv database API properly to search for tv listings" do
      get :search_results, params: {search: "xena"}
      expect(response).to have_http_status(:success)
    end
  end

end
