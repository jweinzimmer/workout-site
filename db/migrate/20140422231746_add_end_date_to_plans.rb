class AddEndDateToPlans < ActiveRecord::Migration
  def change
    add_column :plans, :end_date, :date
  end
end
