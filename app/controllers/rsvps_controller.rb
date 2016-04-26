class RsvpsController < ApplicationController
  def index
    @rsvps = RSVP.order('id DESC')
  end

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

  def record
    @rsvp = RSVP.find(params[:id])
    @rsvp.recorded = true
    @rsvp.save
    redirect_to "/just-a-little-bit-secret"
  end

  def unrecord
    @rsvp = RSVP.find(params[:id])
    @rsvp.recorded = false
    @rsvp.save
    redirect_to "/just-a-little-bit-secret"
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:name, :attending_ceremony, :number_attending, :dietary_restrictions, :attending_friday)
  end
end
