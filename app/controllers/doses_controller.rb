class DosesController < ApplicationController
  def index
    @doses = Dose.all
  end

  def new
    @dose = Dose.new
  end

 def create
    @dose = Dose.create(dose_params)
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end

  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to dose_path(@dose)
  end

  private
  def dose_params # strong params to prevent exploitation
    params.require(:dose).permit(:description, :cocktail, :ingredient)
  end
end
