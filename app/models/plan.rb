class Plan < ActiveRecord::Base
	has_many :workouts

	# def self.user_plans
	# 	Plan.where(:id == current_user.plan_id)
	# end
end
