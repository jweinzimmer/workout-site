class AddDaysPerformedToPlans < ActiveRecord::Migration
  def change
    add_column :plans, :days_performed, :string
  end
end
