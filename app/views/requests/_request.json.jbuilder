json.extract! request, :id, :title, :owner, :email, :description, :cost, :size, :urgency, :from_address, :from_city, :from_state, :to_address, :to_city, :to_state, :created_at, :updated_at
json.url request_url(request, format: :json)
