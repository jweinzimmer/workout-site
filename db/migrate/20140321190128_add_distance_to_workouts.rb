class AddDistanceToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :distance, :integer
  end
end
