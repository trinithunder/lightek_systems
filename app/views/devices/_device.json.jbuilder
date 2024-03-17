json.extract! device, :id, :name, :model, :system_name, :system_version, :identifier_for_vendor, :localized_model, :user_interface_idiom, :user_id, :created_at, :updated_at
json.url device_url(device, format: :json)
