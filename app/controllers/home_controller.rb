class HomeController < ApplicationController
  def index
    render plain: 'Flick is running!'
  end
end
