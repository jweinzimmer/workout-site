class RemoveImageFromWorkouts < ActiveRecord::Migration
  def change
    remove_column :workouts, :image, :string
  end
end
