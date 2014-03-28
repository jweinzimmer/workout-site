class AddRepsToWorkoutSet < ActiveRecord::Migration
  def change
    add_column :workout_sets, :reps, :integer
  end
end
