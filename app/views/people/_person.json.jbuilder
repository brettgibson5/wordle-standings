json.extract! person, :id, :name, :rounds, :score, :created_at, :updated_at
json.url person_url(person, format: :json)
