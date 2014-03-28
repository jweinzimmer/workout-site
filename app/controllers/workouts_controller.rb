class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  # GET /workouts
  # GET /workouts.json
  def index
    @workouts = current_user.workouts.all
  end

  # def all_workouts
  #   @workouts ||= []
  #   Workout.all.each do |builder|
  #     @workouts << builder.details if !@workouts.include?(builder.details)
  #   end
  #   @workouts
  # end

  # helper_method :all_workouts


  # GET /workouts/1
  # GET /workouts/1.json
  def show
    @workout = Workout.find(params[:id])
  end

  # GET /workouts/new
  def new
    @workout = Workout.new
    3.times {@workout.workout_sets.build}
    @workout.build_gymweight
   # @workout.workout_sets.build if @workout.workoutsets.empty?
  end

  # GET /workouts/1/edit
  def edit
    @workout = Workout.find(params[:id])
  end
  # POST /workouts
  # POST /workouts.json
  def create
    @workout = current_user.workouts.new(workout_params)
    respond_to do |format|
      if @workout.save
        format.html { redirect_to @workout.plan, notice: 'Workout was successfully created.' }
        format.json { render action: 'show', status: :created, location: @workout }
      else
        format.html { render action: 'new' }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workouts/1
  # PATCH/PUT /workouts/1.json
  def update
    
    respond_to do |format|
      if @workout.update(workout_params)
        format.html { redirect_to @workout, notice: 'Workout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workouts/1
  # DELETE /workouts/1.json
  def destroy
    @workout.destroy
    respond_to do |format|
      format.html { redirect_to workouts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = Workout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_params
      params.require(:workout).permit(:name, :details,  :days_performed, :duration_of_workout, :photo, :user_id, :plan_id, :gymweight_attributes => [:name, :id, :workout_id], :workout_sets_attributes => [:weight, :reps, :id, :_destroy, :workout_id])
    end
end
