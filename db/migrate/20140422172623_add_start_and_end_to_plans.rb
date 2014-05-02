class AddStartAndEndToPlans < ActiveRecord::Migration
  def change
    add_column :plans, :start, :date
    add_column :plans, :end, :date
  end
end
