class HauntingsController < ApplicationController

  def index
    @hauntings = Haunting.all
  end

  def show
    @haunting = Haunting.find(params[:id])
  end

  def create
    @haunting = Haunting.new(params[haunting_params])
    @haunting.save
  end

  def destroy
    @haunting = Haunting.find(params[:id])
    @haunting.destroy
    redirect_to Ghost show
  end

  private

  def haunting_params
    params.require(:haunting).permit(:start_date, :end_date, :location)
  end
end
