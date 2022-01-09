class PromosController < ApplicationController

  def index
    @promos = Promo.all
  end

  def show
    @promo = Promo.find(params[:id])
  end

  def new
    @promo = Promo.new
  end

  def edit
    @promo = Promo.find(params[:id])
  end

  def update
    @promo = Promo.find(params[:id])
    if @promo.update(promo_params)
      redirect_to @promo
    else
      render :edit
    end
  end

  def create
    @promo = Promo.new(promo_params)
    if @promo.save
      redirect_to @promo
    else
      render :new
    end
  end

  private

    def promo_params
      params.require(:promo).permit(:name)
    end
end
