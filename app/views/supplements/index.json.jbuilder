json.array!(@supplements) do |supplement|
  json.extract! supplement, :id, :description, :brand, :opinion, :serving_size, :price
  json.url supplement_url(supplement, format: :json)
end
