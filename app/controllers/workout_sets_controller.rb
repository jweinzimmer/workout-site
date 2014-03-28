class WorkoutSetsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @sets = current_user.workouts.workout_sets.new(workout_set_params)
    binding.pry
  end

  def show
    
  end

  def update
  end

  def destroy
  end

  private
    def workout_set_params
      params.require(:workout_set).permit(:reps, :weight)
    end
end
