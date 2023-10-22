json.extract! info, :id, :user_id, :username, :nome, :foto, :bio, :certificazione, :tipo, :created_at, :updated_at
json.url info_url(info, format: :json)
