json.array!(@scores) do |score|
  json.extract! score, :id, :student_id, :course_id, :score
  json.url score_url(score, format: :json)
end
