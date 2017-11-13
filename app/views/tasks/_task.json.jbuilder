json.extract! task, :id, :name, :user_id, :status, :created_at, :updated_at
json.url task_url(task, format: :json)
