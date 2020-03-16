class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end
  #added parameter to see if I can display images. Take it away if it doesn't work.

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  # def create
  #   @cocktail = Cocktail.new(cocktail_params)
  #   @cocktail.save
  #   redirect_to @cocktail
  # end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to @cocktail, notice: 'You cocktail was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path(@cocktails)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
