json.array!(@beers) do |beer|
  json.extract! beer, :id, :name, :description, :price
  json.url beer_url(beer, format: :json)
end
