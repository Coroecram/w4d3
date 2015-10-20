class CatRentalRequestsController < ApplicationController

  def index
    @requests = CatRentalRequest.all
    render json: @requests
  end

  def new
    @request = CatRentalRequest.new
    render :new
  end

end
