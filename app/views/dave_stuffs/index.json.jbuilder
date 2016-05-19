json.array!(@dave_stuffs) do |dave_stuff|
  json.extract! dave_stuff, :id, :saying
  json.url dave_stuff_url(dave_stuff, format: :json)
end
