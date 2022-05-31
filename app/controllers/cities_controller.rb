class CitiesController < ApplicationController

    def new

    end

    def index
        @response
    end

    def get_locations
        cidade = params[:name]
        url = "https://api.weatherapi.com/v1/history.json?key=c843ecec3a444ce7bf0143506223005&q=#{cidade}&dt=#{1.week.ago.strftime("%Y-%m-%d")}"
        @response = RestClient.get(url)
        p @response.body
        # respond_to do |format|
        #     format.html { render json: response.body.to_json }
        # end
        # render json: @@response.body, status: :ok
        redirect_to controller: "cities", action: "index", dados: @response
    end
end