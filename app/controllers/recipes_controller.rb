class RecipesController < ApiController
  # GET /drinks
  def index
    @recipes = Recipe.select("id, name").all
    render json: @recipes.to_json
  end

  # GET /drinks/:id
  def show
    @recipe = Recipe.find(params[:id])
    render json: @recipe.to_json(:include => { :ingredients => { :only => [:id, :amount, :name] }})
  end
end
