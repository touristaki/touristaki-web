class Partners::ToursController < ApplicationController
  before_action :authenticate_partner!
  before_action :load_params, only: [:create]

  def index
    @tours = current_partner.tours
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = current_partner.tours.build(*load_params)

    if @tour.save!
      redirect_to partners_tours_path
    end
  end

  def show
    @tour = Tour.find(params[:id])
  end

  private

  def load_params
    params.require(:tour).permit(:title, :category_id, :date, :embed)
  end
end
