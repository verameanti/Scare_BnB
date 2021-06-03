class HauntingsController < ApplicationController

  def index
    @hauntings = Haunting.order(:start_date)
    @markers = @hauntings.geocoded.map do |haunting|
      {
        lat: haunting.latitude,
        lng: haunting.longitude,
        # info_window: render_to_string(partial: "infowindow", locals: { haunting: haunting }),
        image_url: helpers.asset_url('icon.png')
      }
    end
  end

  def show
    @haunting = Haunting.find(params[:id])
  end

  def create
    @ghost = Ghost.find(params[:ghost_id])
    @haunting = Haunting.new(haunting_params)
    @haunting.user = current_user
    @haunting.ghost = @ghost
    # raise
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
