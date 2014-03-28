class AddWorkoutIdToGymweights < ActiveRecord::Migration
  def change
    add_column :gymweights, :workout_id, :integer
  end
end
