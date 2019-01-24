class DosesController < ApplicationController
  before_action :set_dose, only: [:new, :create]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      # respond_to do |format|
      #   format.html { redirect_to cocktail_path(@cocktail) }
      #   format.js # <-- will render `app/views/reviews/create.js.erb`
      redirect_to cocktail_path(@cocktail)
    else
      render :new
      # respond_to do |format|
      #   format.html { render 'cocktails/show' }
      #   format.js # <-- idem
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.delete
    redirect_to cocktail_path(@cocktail)

    # @dose = Dose.find(params[:id])
    # @cocktail = @dose.cocktail
    # @dose.destroy
    # redirect_to cocktail_path(@cocktail)
  end


  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_dose
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
