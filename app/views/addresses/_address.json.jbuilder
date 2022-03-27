json.extract! address, :id, :person_id, :street, :number, :neighborhood, :complement, :city, :state, :postcode, :created_at, :updated_at
json.url address_url(address, format: :json)
