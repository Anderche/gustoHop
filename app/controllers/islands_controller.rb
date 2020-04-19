class IslandsController < ApplicationController

  def index
    @islands = Island.all
  end

  def show
    @island = Island.find(params[:id])
  end

  private

  def island_params
    params.require(:island).permit(:island_name, :island_country)
  end
end
