class AccommodationsController < ApplicationController
  def index
    if params[:order] == "distance"
      @accommodations = Accommodation.order(:distance)
    else
      @accommodations = Accommodation.order(:price_int)
    end
  end

  def new
    @accommodation = Accommodation.new
  end

  def create
    @accommodation = Accommodation.new(accommodation_params)
    if @accommodation.save
      flash[:success] = "Success!"
      redirect_to new_accommodation_path
    end
  end

  def edit
    @accommodation = Accommodation.find(params[:id])
  end

  def update
    @accommodation = Accommodation.find(params[:id])
    if @accommodation.update_attributes(accommodation_params)
      flash[:success] = "Success!"
      redirect_to accommodations_path
    end
  end

  protected

  def accommodation_params
    params.require(:accommodation).permit(
      :title,
      :price,
      :distance,
      :description,
      :address_line_1,
      :address_line_2,
      :website,
      :email,
      :price_int,
      :phone
    )
  end
end
