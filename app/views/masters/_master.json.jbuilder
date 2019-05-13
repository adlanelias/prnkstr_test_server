json.extract! master, :id, :name, :password_digest, :slave_id, :admin, :created_at, :updated_at
json.url master_url(master, format: :json)
