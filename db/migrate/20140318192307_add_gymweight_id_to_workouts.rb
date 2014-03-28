class AddGymweightIdToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :gymweight_id, :integer
  end
end
