class CreateGymweights < ActiveRecord::Migration
  def change
    create_table :gymweights do |t|
      t.string :weights_workout_type

      t.timestamps
    end
  end
end
