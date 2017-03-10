class DosesController < ApplicationController
  before_action :set_dose, only: [:destroy]

  def new
  end

  def destroy
    @dose.destroy
    @cocktail = params[:cocktail]
    redirect_to cocktails_path
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.ingredient = Ingredient.find(params[:dose][:ingredient])
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    @cocktail = @dose.cocktail


    if @dose.save
      @dose.save
      redirect_to cocktails_path
    else
      render "new"
    end
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description)
  end
end
