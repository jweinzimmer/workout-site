class AddWeightToWorkoutSets < ActiveRecord::Migration
  def change
    add_column :workout_sets, :weight, :integer
  end
end
