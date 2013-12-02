json.array!(@book_a_lawns) do |book_a_lawn|
  json.extract! book_a_lawn, :title, :description, :date
  json.url book_a_lawn_url(book_a_lawn, format: :json)
end
