class AddBikeWorkoutTypeToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :bike_workout_type, :string
  end
end
