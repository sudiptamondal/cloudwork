json.extract! sensor, :id, :device, :temperature, :created_at, :updated_at
json.url sensor_url(sensor, format: :json)
