class ProducersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @producers = Producer.all
  end

  def show

  end

  def new

  end

  def create

  end

  def update

  end

  def edit

  end

  def destroy

  end

  private

  def producer_params
    params.require(:producer).permit(:producer_name)
  end


end
