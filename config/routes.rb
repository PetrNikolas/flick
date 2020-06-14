# frozen_string_literal: true

Rails.application.routes.draw do
  # Import constraints
  require 'constraints/auth_constraint'

  # Root route
  root 'home#index'

  # API endpoints
  scope '/api', module: :api, defaults: { format: :json }, constraints: AuthConstraint.new(token: 'OllBS57MeAW041dgR7xolpZaiO87kjnMVVK3qrtgtTbcBolB7K3TugZBuM6') do
    # Version 1 of API
    scope '/v1', module: :v1 do
      # resources :news
    end
  end
end
