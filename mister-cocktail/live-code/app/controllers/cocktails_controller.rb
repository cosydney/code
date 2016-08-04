class CocktailsController < ApplicationController

  before_action :set_cocktail, only: [:update, :destroy, :show, :edit]

  def new
    @cocktail = Cocktail.new
    10.times { @cocktail.doses.new }
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to @cocktail, notice: 'Booyah'
    else
      render :new
    end
  end

  def index
    @cocktails = Cocktail.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
    @dose = @cocktail.doses.new
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
