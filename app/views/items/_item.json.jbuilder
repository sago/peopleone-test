json.extract! item, :id, :name, :area_id, :price, :description, :created_at, :updated_at
json.url item_url(item, format: :json)
