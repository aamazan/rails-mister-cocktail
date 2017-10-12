class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Task.find(params[:id])
    @doses = Dose.find(@cocktail)
    @doses.destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private
  def cocktail_params # strong params to prevent exploitation
    params.require(:cocktail).permit(:name)
  end

end
