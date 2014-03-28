class AddNameToGymweights < ActiveRecord::Migration
  def change
    add_column :gymweights, :name, :string
  end
end
