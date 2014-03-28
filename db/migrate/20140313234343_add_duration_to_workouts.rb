class AddDurationToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :duration_of_workout, :integer
  end
end
