class AddGymWorkoutTypeToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :weights_workout_type, :string
  end
end
