class AddWorkoutIdToWorkoutSets < ActiveRecord::Migration
  def change
    add_column :workout_sets, :workout_id, :integer
  end
end
