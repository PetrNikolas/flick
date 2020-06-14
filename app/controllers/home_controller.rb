# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    render plain: 'Flick is running!'
  end
end
