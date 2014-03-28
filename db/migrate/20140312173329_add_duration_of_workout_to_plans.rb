class AddDurationOfWorkoutToPlans < ActiveRecord::Migration
  def change
    add_column :plans, :duration_of_workout, :integer
  end
end
