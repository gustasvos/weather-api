require 'rails_helper'

RSpec.describe "Cities", type: :request do

  describe "POST /locations" do
    it "should be successful" do
      post '/locations', params: {
        name: 'london',
        date: 1.weeks.ago.strftime("%Y-%m-%d")
      }

      expect(response).to be_successful
    end

    it "missing params" do
      post '/locations'
      expect(response).to have_http_status(:bad_request)
    end

  end
end
