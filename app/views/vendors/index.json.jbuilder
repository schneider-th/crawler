json.array!(@vendors) do |vendor|
  json.extract! vendor, :id, :vendorid, :name, :url
  json.url vendor_url(vendor, format: :json)
end
