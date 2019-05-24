json.extract! complaint, :id, :landlord_name, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
