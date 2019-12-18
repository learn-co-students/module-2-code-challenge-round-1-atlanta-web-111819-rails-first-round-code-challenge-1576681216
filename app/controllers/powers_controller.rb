class PowersController < ApplicationController
  before_action :get_power, only: [:show]
  
  def index
    @powers = Power.all
  end

  def show

  end

  private

  def get_power
    @power = Power.find(params.require(:id))
  end
end
