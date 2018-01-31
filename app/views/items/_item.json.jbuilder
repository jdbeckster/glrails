json.extract! item, :id, :user, :title, :url, :text, :created_at, :updated_at
json.url item_url(item, format: :json)
