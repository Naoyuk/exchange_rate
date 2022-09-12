# frozen_string_literal: true

Rails.application.routes.draw do
  root 'rates#index'
  get 'rates/index'
end
