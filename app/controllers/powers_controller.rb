class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    select_power
  end
  

private
  def select_power
    @power = Power.find(params[:id])
  end

  def post_params
    params.require(:power).permit(:name, :description)
  end

end
