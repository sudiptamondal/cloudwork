json.extract! bookmark, :id, :text, :url, :created_at, :updated_at
json.url bookmark_url(bookmark, format: :json)
