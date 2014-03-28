class RemoveDurationOfWorkoutFromWorkouts < ActiveRecord::Migration
  def change
    remove_column :workouts, :duration_of_workout, :integer
  end
end
