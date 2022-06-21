class CitiesController < ApplicationController
    def new
    end

    def index
        get_locations()
    end
    
    private
    def get_locations
        city = params[:name]
        date = params[:date]
        key = Rails.application.credentials.api[:key]

        if city.blank? || date.blank?
            render :error, status: :bad_request
        else 
            history_url = "https://api.weatherapi.com/v1/history.json?key=#{key}&q=#{city}&dt=#{date}"
            responseh = RestClient.get(history_url)
            @responseh = JSON.parse(responseh.body).symbolize_keys
    
            current_url = "http://api.weatherapi.com/v1/current.json?key=#{key}&q=#{city}&aqi=no"
            responsec = RestClient.get(current_url)
            @responsec = JSON.parse(responsec.body).symbolize_keys
            render :index
        end

    end
end