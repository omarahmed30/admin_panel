json.extract! student, :id, :firstname, :lastname, :age, :education, :created_at, :updated_at
json.url student_url(student, format: :json)
