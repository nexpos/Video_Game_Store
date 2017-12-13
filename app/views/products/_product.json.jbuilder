json.extract! product, :id, :name, :price, :quanity, :description, :brand, :rating, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
