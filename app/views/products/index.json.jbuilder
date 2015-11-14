json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :description, :manufacturer, :category, :units_in_stock
  json.url product_url(product, format: :json)
end
