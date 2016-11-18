json.extract! car, :id, :image, :engine_size, :speed, :acceleration, :model_id, :created_at, :updated_at
json.url car_url(car, format: :json)