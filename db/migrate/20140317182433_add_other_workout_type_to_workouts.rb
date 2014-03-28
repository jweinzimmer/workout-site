class AddOtherWorkoutTypeToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :other_workout_type, :string
  end
end
