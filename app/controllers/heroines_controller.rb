class HeroinesController < ApplicationController
  before_action :get_heroine, only: [:show]
  
  def index
    @heroines = Heroine.all
  end

  def show
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.save
      redirect_to @heroine
    else
      render :new
    end
  end

  private

  def get_heroine
    @heroine = Heroine.find(params.require(:id))
  end

  def heroine_params
    params.require(:heroine).permit(:super_name, :name, :power_id)
  end
end
