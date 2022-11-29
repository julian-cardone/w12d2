json.extract! @pokemon, :id, :name, :number, :attack, :defense, :created_at, :updated_at
json.type @pokemon.poke_type
json.moves @pokemon.moves.map(&:name)