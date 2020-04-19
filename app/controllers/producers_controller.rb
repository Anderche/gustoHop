class ProducersController < ApplicationController

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
