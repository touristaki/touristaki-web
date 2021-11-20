class Partners::ToursController < ApplicationController
  before_action :authenticate_partner!
  before_action :load_params, only: [:create]

  layout 'partners'

  def index
    @tours = Tour.where(road_map_id: current_partner.road_maps.ids )
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

  def scheduled
    @tours = Tour.where(road_map_id: current_partner.road_maps.ids)
                 .where(status: "processing")
  end

  def accomplished_list
    @tours = Tour.where(road_map_id: current_partner.road_maps.ids)
                 .where(status: "accomplished")
  end

  def closed_list
    @tours = Tour.where(road_map_id: current_partner.road_maps.ids)
                 .where(status: "closed")
  end

  def processing
    @tour = Tour.find(params[:id])
    @tour.processing!
    @tour.update_attribute(:processing_at, Time.zone.now)

    redirect_to partners_tour_path(@tour)
  end

  def closed
    @tour = Tour.find(params[:id])
    @tour.closed!
    
    @tour.update_attribute(:closed_at, Time.zone.now)
  end

  def accomplished
    @tour = Tour.find(params[:id])
    @tour.accomplished!
    @tour.update_attribute(:accomplished_at, Time.zone.now)

    redirect_to partners_tours_path
  end

  private

  def load_params
    params.require(:tour).permit(:name, :road_map_id, :live_date, :video_link, :max_spectors)
  end
end
