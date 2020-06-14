# frozen_string_literal: true

module Api
  module V1
    class ApiController < ApplicationController
      # Concerns
      include Concerns::ErrorHandler
    end
  end
end
