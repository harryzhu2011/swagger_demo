class PetsController < ApplicationController
  def index
    msg = {:index => true}
    render :json => msg
  end

  def new
    msg = {:new => true}
    render :json => msg
  end

  def create
    msg = {:create => true}
    render :json => msg
  end
end
