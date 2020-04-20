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
    @producer = Producer.find(producer_params)
    @producer.user = current_user

    if @producer.save
      redirect_to @producer, notice: "Producer was successfully created!"
    else
      render :new
    end
  end

  def edit
  end

  def update
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
end
