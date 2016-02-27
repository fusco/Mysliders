json.array!(@slides) do |slide|
  json.extract! slide, :id, :name, :desc, :author
  json.url slide_url(slide, format: :json)
end
