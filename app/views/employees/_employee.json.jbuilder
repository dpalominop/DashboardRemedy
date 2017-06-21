json.extract! employee, :id, :username, :name, :document, :created_at, :updated_at
json.url employee_url(employee, format: :json)
