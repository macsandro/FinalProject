json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :address, :city, :state, :zip_code, :contact, :phone_number
  json.url customer_url(customer, format: :json)
end
