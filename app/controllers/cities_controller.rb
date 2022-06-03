class CitiesController < ApplicationController

    def new
    end

    def index
    end

    def get_locations
        city = params[:name]
        key = Rails.application.credentials.api[:key]
        date = params[:date]
        url = "https://api.weatherapi.com/v1/history.json?key=#{key}&q=#{city}&dt=#{date}"
        @response = RestClient.get(url)
        # p @response.body
        render json: @response.body, status: :ok
    end
end