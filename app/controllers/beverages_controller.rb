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

  def show
    @beverage = Beverage.find(params[:id])
  end

  def edit
    @beverage = Beverage.find(params[:id])
  end

  def update
    @beverage = Beverage.find(params[:id])
    @beverage.update_attributes!(beverage_params)

    redirect_to beverages_path
  end

  def destroy
    @beverage = Beverage.find(params[:id]).delete

    redirect_to beverages_path
  end

  private
  def beverage_params
    params.require(:beverage).permit(:drink_name, :alcohol)
  end
end