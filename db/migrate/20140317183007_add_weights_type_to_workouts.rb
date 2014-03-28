class AddWeightsTypeToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :weights_workout_type_id, :integer
  end
end
