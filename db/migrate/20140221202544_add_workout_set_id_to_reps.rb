class AddWorkoutSetIdToReps < ActiveRecord::Migration
  def change
    add_column :reps, :workout_set_id, :integer
  end
end
