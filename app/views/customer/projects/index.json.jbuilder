json.array!(@customer_projects) do |customer_project|
  json.extract! customer_project, :id, :name, :address, :city, :state, :zip_code, :contact, :phone_number
  json.url customer_project_url(customer_project, format: :json)
end
