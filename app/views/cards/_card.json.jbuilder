json.extract! card, :id, :user_id, :card_number, :cvv, :valid_through, :created_at, :updated_at
json.url card_url(card, format: :json)
