class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :details
      t.string :days_performed
      t.integer :duration_of_workout

      t.timestamps
    end
  end
end
