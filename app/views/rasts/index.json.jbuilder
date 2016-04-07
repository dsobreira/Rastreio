json.array!(@rasts) do |rast|
  json.extract! rast, :id, :email, :domain, :path, :page, :access
  json.url rast_url(rast, format: :json)
end
