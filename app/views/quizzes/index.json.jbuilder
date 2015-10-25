json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :title, :owner_email
  json.url quiz_url(quiz, format: :json)
end
