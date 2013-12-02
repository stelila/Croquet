json.array!(@programme2013s) do |programme2013|
  json.extract! programme2013, :title, :date, :description
  json.url programme2013_url(programme2013, format: :json)
end
