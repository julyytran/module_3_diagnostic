class SearchController < ApplicationController
  def index
    nrel_service = NRELService.new
    @fuel_stations = nrel_service.get_by_zip(params[:q])["fuel_stations"]
  end
end
