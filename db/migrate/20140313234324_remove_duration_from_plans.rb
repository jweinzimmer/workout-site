class RemoveDurationFromPlans < ActiveRecord::Migration
  def change
    remove_column :plans, :duration_of_workout, :integer
  end
end
