class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show, :new, :create]

  before_action :set_island, only: [ :show, :edit, :update, :destroy]
  # before_action :set_producer, only: [ :show, :edit, :update, :destroy]

  def index
    @islands = Island.all
  end

  def show
  end

  def new
    @island = Island.new
    authorize @island
  end

  def create
    @island = Island.new(island_params)

    if @island.save!
      redirect_to island_path(@island), notice: "Island successfully created!"
    else
      render :new
    end
  end

  private

  def set_island
    @island = Island.find(params[:id])
  end

  def island_params
    params.require(:island).permit(:island_name, :island_country)
  end
end
