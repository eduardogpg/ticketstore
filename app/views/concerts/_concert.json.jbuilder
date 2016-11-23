json.extract! concert, :id, :name, :description, :release_date, :created_at, :updated_at
json.url concert_url(concert, format: :json)