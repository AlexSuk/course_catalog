json.array!(@enrollments) do |enrollment|
  json.extract! enrollment, :id, :users_id, :courses_id
  json.url enrollment_url(enrollment, format: :json)
end
