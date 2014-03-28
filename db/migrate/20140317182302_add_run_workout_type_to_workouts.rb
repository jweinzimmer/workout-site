class AddRunWorkoutTypeToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :run_workout_type, :string
  end
end
