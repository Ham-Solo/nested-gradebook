json.array!(@grades) do |grade|
  json.extract! grade, :id, :score, :assignment_id, :student_id
  json.url grade_url(grade, format: :json)
end
