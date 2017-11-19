class WelcomeController < ApplicationController
  def index
    msg = {:test => 'success'}
    render :json => msg
  end
end
