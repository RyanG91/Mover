json.extract! provider, :id, :title, :owner, :email, :description, :cost, :vehicle, :city, :state, :created_at, :updated_at
json.url provider_url(provider, format: :json)
