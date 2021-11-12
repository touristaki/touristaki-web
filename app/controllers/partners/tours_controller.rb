class Partners::ToursController < ApplicationController
  before_action :authenticate_partner!
  before_action :load_params, only: [:create]

  def index
    @tours =  Tour.where(road_map_id: current_partner.road_maps.ids )
  end

  def show
    @tour = Tour.find(params[:id])
  end

  def new
    @tour = Tour.new
    @road_maps = current_partner.road_maps
  end

  def create
    @road_map = RoadMap.find(load_params[:road_map_id])
    @tour = @road_map.tours.build(*load_params)

    if @tour.save!
      redirect_to partners_tour_path(@tour)
    end
  end

  def destroy
    @tour = Tour.find(params[:id])
    @tour.destroy

    redirect_to partners_tours_path
  end

  def edit
    @tour = Tour.find(params[:id])
  end

  def update
    @tour = Tour.find(params[:id])

    if @tour.update(*load_params)
      redirect_to partners_tour_path(@tour)
    end
  end

  private

  def load_params
    params.require(:tour).permit(:name, :road_map_id, :live_date, :video_link)
  end
end
