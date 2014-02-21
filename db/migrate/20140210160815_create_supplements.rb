class CreateSupplements < ActiveRecord::Migration
  def change
    create_table :supplements do |t|
      t.string :description
      t.string :brand
      t.string :opinion
      t.integer :serving_size
      t.integer :price

      t.timestamps
    end
  end
end
