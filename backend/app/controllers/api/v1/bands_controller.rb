class Api::V1::BandsController < ApplicationController
  def index
    @bands = Band.all

    render json: @bands
  end

  def show
    @band = Band.find(params[:id])

    render json: @band
  end
end
