class PlansController < ApplicationController
  # respond_to :json
  def show
    @plan = Plan.find(params[:id])
  end

  def index
    # @plans = current_user.plans.all
    # events = []
    @plans = Plan.all 
   @plans = Plan.between(params['start'], params['end']) if (params['start'] && params['end']) 
   # @plans.each do |plan|
   #    events << {:id => "#{plan.id}", :title => "#{plan.name}", :start => "#{plan.start_date}",:end => "#{plan.end_date}" }
   #  end 
   respond_to do |format|  
    format.html
    format.json { render json: @plans.to_json}
    # console.dir("#{plan.name}")
  end
  # render :text => @plans.to_json 
end
  
 def get_plans
    # respond_to :json
   
    events = []
     @plan = current_user.plans
    @plan.each do |plan|
      events << {:id => "#{plan.id}", :title => "#{plan.name}", :start => "#{plan.start_date}",:end => "#{plan.end_date}" }
    end
    # render :text => events.to_json
    # events.to_json
    # format.json { render json: events }
  end
  def new
    @plan = Plan.new
    #1.times {@plan.workouts.build}
    #2.times {@plan.workouts.workout_sets.build}
  end
def edit
  @plan = Plan.find(params[:id])
end

  def create
    # @lat_lng ||= cookies[:lat_lng] ? cookies[:lat_lng].split("|") : nil
    @plan ||= current_user.plans ? current_user.plans.new(plan_params) : nil
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
  def uploaded_plans
    @uploadplans = Uploadedplan.all
  end
  def new_uploaded_plans

    @uploadplan = Uploadedplan.new

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
    params.require(:plan).permit(:photo, :name, :days_performed,  :workouts_attributes => [:run_workout_type, :swim_workout_type, :bike_workout_type, :other_workout_type, :weights_workout_type, :duration_of_workout, :details, :id, :_destroy, :plan_id, :gymweight_attributes => [:id, :name,],  :workout_sets_attributes => [:id, :reps, :weight]])
  end
end
