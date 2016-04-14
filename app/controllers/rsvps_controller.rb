class RsvpsController < ApplicationController
  def new
    @rsvp = RSVP.new
  end

  def create
    @rsvp = RSVP.new(rsvp_params)
    if @rsvp.save
      redirect_to thank_you_path
    else
      render :new
    end
  end

  def thank_you
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:name, :attending_ceremony, :number_attending, :dietary_restrictions, :attending_friday)
  end
end
