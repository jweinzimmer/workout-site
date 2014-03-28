class RemoveDaysPerfroemdFromWorkouts < ActiveRecord::Migration
  def change
    remove_column :workouts, :days_performed, :string
  end
end
