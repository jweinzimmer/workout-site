class AddUserIdToSupplements < ActiveRecord::Migration
  def change
    add_column :supplements, :user_id, :integer
  end
end
