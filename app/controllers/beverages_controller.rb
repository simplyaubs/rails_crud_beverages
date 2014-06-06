class BeveragesController < ApplicationController

  def index
    @beverage = Beverage.new
    @beverages = Beverage.all
  end

  def create
    @beverage = Beverage.create(beverage_params)
    if @beverage.save
      redirect_to beverages_path
    else
      render :index
    end
  end

  private
  def beverage_params
    params.require(:beverage).permit(:drink_name, :alcohol)
  end
end