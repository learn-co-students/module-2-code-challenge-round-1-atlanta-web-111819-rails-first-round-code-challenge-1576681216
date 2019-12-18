class HeroinesController < ApplicationController
  
  
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params.require(:id))
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

  def filter
    @heroines = Heroine.where('power_id = ?', params[:power_id])
    render :index
  end

  private

  def heroine_params
    params.require(:heroine).permit(:super_name, :name, :power_id)
  end
end
