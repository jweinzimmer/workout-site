class AddWeightDetailsToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :weight_details, :string
  end
end
