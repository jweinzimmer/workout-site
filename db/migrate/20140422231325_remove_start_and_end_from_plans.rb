class RemoveStartAndEndFromPlans < ActiveRecord::Migration
  def change
    remove_column :plans, :start, :date
    remove_column :plans, :end, :date
  end
end
