json.array!(@beer_makers) do |beer_maker|
  json.extract! beer_maker, :id, :name, :location, :date_of_founding
  json.url beer_maker_url(beer_maker, format: :json)
end
