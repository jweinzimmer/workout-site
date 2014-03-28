class AddSwimWorkoutTypeToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :swim_workout_type, :string
  end
end
