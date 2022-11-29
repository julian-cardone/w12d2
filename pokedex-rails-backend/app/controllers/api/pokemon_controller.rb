class Api::PokemonController < ApplicationController
  def index
    pokemon = Pokemon.all
    render template: 'api/pokemon/index', locals: { pokemon: }
  end
end

