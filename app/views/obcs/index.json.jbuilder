json.array!(@obcs) do |obc|
  json.extract! obc, :id, :landingpage, :first_level
  json.url obc_url(obc, format: :json)
end
