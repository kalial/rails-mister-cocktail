class CocktailsController < ApplicationController

  before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
    # @cocktail_names = Cocktail.pluck(:name)
    # create_json
  end

  def show
    # @doses = @cocktail.doses
    # @dose = Dose.new
  end

  def new
    # we need @restaurant in our `simple_form_for`
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    #raise
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
