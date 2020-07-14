class Api::RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render 'index.json.jb'
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @recipe = Recipe.new(
      chef: params[:chef],
      title: params[:title],
      ingredients: params[:ingredients],
      instructions: params[:instructions],
      prep_time: params[:prep_time],
      cook_time: params[:cook_time],
      recipe_notes: params[:recipe_notes]
    )
    @recipe.save
    render 'show.json.jb'
  end
  
end
