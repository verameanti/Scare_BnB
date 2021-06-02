class HauntingsController < ApplicationController

  def index
    @hauntings = Haunting.all
  end

  def show
    @haunting = Haunting.find(params[:id])
  end

  def create
    @ghost = Ghost.find(params[:ghost_id])
    @haunting = Haunting.new(params[haunting_params])
    @haunting.user = current_user
    @haunting.ghost = @ghost
    if @haunting.save
      redirect_to haunting_path(@haunting)
    else
      render :template => "ghosts/show"
    end
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
