json.extract! person, :id, :name, :kind_document, :document, :email, :created_at, :updated_at
json.url person_url(person, format: :json)
