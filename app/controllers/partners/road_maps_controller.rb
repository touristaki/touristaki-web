class Partners::RoadMapsController < ApplicationController
  before_action :authenticate_partner!
  before_action :load_params, only: [:create]

  def index
    @road_maps = current_partner.road_maps
  end

  def new
    @road_map = RoadMap.new
  end

  def create
    @road_map = current_partner.road_maps.build(*load_params)

    if @road_map.save!
      redirect_to partners_road_maps_path
    end
  end

  def show
    @road_map = RoadMap.find(params[:id])
  end

  private

  def load_params
    params.require(:road_map).permit(:title, :category_id)
  end
end
