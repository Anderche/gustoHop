class ProducersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  before_action :set_island, only: [ :index, :show, :new, :create, :edit, :update, :destroy]
  before_action :set_producer, only: [ :show, :edit, :update, :destroy]

  def index
    @producers = Producer.where(island_id: params[:island_id])
  end

  def show
  end

  def new
    @producer = Producer.new
  end

  def create
    @producer = @island.producers.create(producer_params)
    # redirect_to island_path(@island)
    @producer.user = current_user

    # WORKING >> REDIRECTING TO ISLAND SHOWPAGE
    if @producer.save!
      redirect_to island_path(@island), notice: "Producer was successfully created!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @producer.save!
      redirect_to island_producer_path, notice: "Edits saved!"
    else
      render :edit
    end
  end

  def destroy
    @producer.destroy
  end

  private

  def set_island
    @island = Island.find(params[:island_id])
  end

  def set_producer
    @producer = @island.producers.find(params[:id])
  end

  # delete? >> keeping in efforts to debug index view
  def island_params
    params.require(:island).permit(:island_name, :island_country)
  end

  def producer_params
    params.require(:producer).permit(:producer_name, :email, :address1, :address2, :postal_code, :city, :country)
  end
end
