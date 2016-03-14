json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :string, :sub_id, :string, :abbreviations, :string
  json.url subject_url(subject, format: :json)
end
