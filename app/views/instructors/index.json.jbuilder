json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :middle, :string, :last, :string, :first, :string, :email, :string, :instruc_id, :string
  json.url instructor_url(instructor, format: :json)
end
