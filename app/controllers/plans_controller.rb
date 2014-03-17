class PlansController < ApplicationController
  def show
    @plan = Plan.find(params[:id])
  end

  def index
    @plans = current_user.plans.all
  end

  def new
    @plan = Plan.new
    1.times {@plan.workouts.build}
    #2.times {@plan.workouts.workout_sets.build}
  end
def edit
  @plan = Plan.find(params[:id])
end

  def create
    @plan = current_user.plans.new(plan_params)
    respond_to do |format|
      if @plan.save
        format.html { redirect_to @plan, notice: 'Workout was successfully created.' }
        format.json { render action: 'show', status: :created, location: @plan }
      else
        format.html { render action: 'new' }
        format.json { render json: @plan.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @plan = Plan.find(params[:id]) 
    respond_to do |format|
      if @plan.update(plan_params)
        format.html { redirect_to @plan, notice: 'Plan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @plan.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  private

  def plan_params
    params.require(:plan).permit(:name, :workouts_attributes => [:duration_of_workout, :details, :id, :_destroy, :plan_id, :days_performed])
  end
end
