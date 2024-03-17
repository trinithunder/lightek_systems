json.extract! homework, :id, :title, :due_date, :user_id, :category_id, :created_at, :updated_at
json.url homework_url(homework, format: :json)
