# frozen_string_literal: true

class RatesController < ApplicationController
  def index
    @rates = Rate.all.order('created_at DESC')
  end
end
