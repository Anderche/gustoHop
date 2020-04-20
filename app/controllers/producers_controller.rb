class ProducersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  before_action :set_producer, only: [:show, :edit, :update, :destroy]

  def index
    @producers = Producer.all
  end

  def show
  end

  def new
    @producer = Producer.new
  end

  def create
    @island = Island.new(island_params)

    # works >> not sure why however >> THIS NEEDS TO BE DYNAMIC VALUE SET BY current_user...
    # @producer.island = Island.create!(island_country: "Italy", island_name: "Ischia")

    @producer = Producer.new(producer_params)
    @producer.user = current_user

    if @producer.save!
      redirect_to @producer, notice: "Producer was successfully created!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @producer.save!
      redirect_to @producer, notice: "Edits saved!"
    else
      render :edit
    end
  end

  def destroy
    @producer.destroy
  end

  private

  def set_producer
    @producer = Producer.find(params[:id])
  end

  def producer_params
    params.require(:producer).permit(:producer_name, :email, :address1, :address2, :postal_code, :city, :country)
  end

  def island_params
    params.require(:island).permit(:island_name, :island_country)
  end
end
