class CitiesController < ApplicationController

    require 'rest-client'

    def get_locations
        url = "https://api.weatherapi.com/v1/timezone.json?key=c843ecec3a444ce7bf0143506223005&q=Sao Paulo"
        response = RestClient.get(url)
        render json: response
    end
end
