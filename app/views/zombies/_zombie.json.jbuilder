json.extract! zombie, :id, :name, :bio, :age, :sex, :created_at, :updated_at
json.url zombie_url(zombie, format: :json)