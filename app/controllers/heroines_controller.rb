class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
end

def show 
  @heroines = Heroine.find(params[:id])
end

end



def heroine_params
params.require(:heroine).permit(:name)
end