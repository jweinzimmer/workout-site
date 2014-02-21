class AddWeightToStats < ActiveRecord::Migration
  def change
    add_column :stats, :weight, :integer
    add_column :stats, :height, :integer
    add_column :stats, :gender, :string
    add_column :stats, :goal_weight, :integer
    add_column :stats, :age, :integer
  end
end
