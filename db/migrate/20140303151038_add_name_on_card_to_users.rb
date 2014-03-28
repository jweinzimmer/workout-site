class AddNameOnCardToUsers < ActiveRecord::Migration
  def change
    add_column :users, :add_name_on, :string
  end
end
