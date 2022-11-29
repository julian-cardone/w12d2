class Api::PokemonController < ApplicationController
  def index
    @pokemon = Pokemon.all
    render template: 'api/pokemon/index'
  end

  def show
    @pokemon = Pokemon.find_by(id: params[:id])
    # render json: @pokemon
    render template: 'api/pokemon/show'
  end

  def types
    render json: [
      "fire",
      "electric",
      "normal",
      "ghost",
      "psychic",
      "water",
      "bug",
      "dragon",
      "grass",
      "fighting",
      "ice",
      "flying",
      "poison",
      "ground",
      "rock",
      "steel"
    ]
  end
end

