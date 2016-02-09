json.array!(@applications) do |application|
  json.extract! application, :id, :name, :has_devise
  json.url application_url(application, format: :json)
end
