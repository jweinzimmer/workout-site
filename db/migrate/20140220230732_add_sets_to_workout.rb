class AddSetsToWorkout < ActiveRecord::Migration
  def change
    add_column :workouts, :sets, :integer
  end
end
