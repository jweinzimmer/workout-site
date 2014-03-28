class RemoveSetsFromWorkout < ActiveRecord::Migration
  def change
    remove_column :workouts, :sets, :integer
  end
end
