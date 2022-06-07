class CitiesController < ApplicationController
    def new
    end

    def index
    end

    def get_locations
        city = params[:name]
        date = params[:date]
        key = Rails.application.credentials.api[:key]
        url = "https://api.weatherapi.com/v1/history.json?key=#{key}&q=#{city}&dt=#{date}"
        response = RestClient.get(url)
        @a = JSON.parse(response.body).symbolize_keys
        render :index, status: :unprocessable_entity
    end
end