json.array!(@courses) do |course|
  json.extract! course, :id, :name, :string, :code, :string, :description, :text, :requirement, :text, :subject, :text
  json.url course_url(course, format: :json)
end
