pokemon.each do |p|
  json.set! p.id do
    json.extract! p, :id, :number, :name, :attack, :defense, :poke_type, :image_url, :captured
  end
end