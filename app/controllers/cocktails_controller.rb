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
    # Cocktail.create(params[:id])
    redirect_to cocktails_path
  end

  def destroy
    @cocktail = Task.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

end
