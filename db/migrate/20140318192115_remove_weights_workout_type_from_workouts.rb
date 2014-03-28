class RemoveWeightsWorkoutTypeFromWorkouts < ActiveRecord::Migration
  def change
    remove_column :workouts, :weights_workout_type_id, :integer
  end
end
