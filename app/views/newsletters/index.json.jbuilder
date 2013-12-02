json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, :name
  json.url newsletter_url(newsletter, format: :json)
end
