class RemoveRepsFromWorkout < ActiveRecord::Migration
  def change
    remove_column :workouts, :reps, :integer
  end
end
