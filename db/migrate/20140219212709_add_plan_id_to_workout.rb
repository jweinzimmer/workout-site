class AddPlanIdToWorkout < ActiveRecord::Migration
  def change
    add_column :workouts, :plan_id, :integer
  end
end
