class CreateWorkoutSets < ActiveRecord::Migration
  def change
    create_table :workout_sets do |t|

      t.timestamps
    end
  end
end
