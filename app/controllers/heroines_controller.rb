class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(post_params(:name, :super_name, :power_id))
    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      error.add(:super_name)
      redirect_to new_heroine_path
    end
  end

  def show
    select_heroine
    @power = @heroine.power
  end

private

  def select_heroine
    @heroine = Heroine.find(params[:id])
  end

  def post_params(*args)
    params.require(:heroine).permit(*args)
  end

end
