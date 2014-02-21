json.array!(@workouts) do |workout|
  json.extract! workout, :id, :details, :days_performed, :duration_of_workout
  json.url workout_url(workout, format: :json)
end
