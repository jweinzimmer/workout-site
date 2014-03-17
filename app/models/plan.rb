class Plan < ActiveRecord::Base
	has_many :workouts, :dependent => :destroy
	accepts_nested_attributes_for :workouts, allow_destroy: true
	# def self.user_plans
	# 	Plan.where(:id == current_user.plan_id)
	# end
end
