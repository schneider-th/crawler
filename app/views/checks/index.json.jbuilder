json.array!(@checks) do |check|
  json.extract! check, :id, :name
  json.url check_url(check, format: :json)
end
