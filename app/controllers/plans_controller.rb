class PlansController < ApplicationController
  def show
    @plan = Plan.find(params[:id])
  end

  def index
    @plans = current_user.plans.all
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = current_user.plans.new(plan_params)
    if @plan.save
      redirect_to plan_path(@plan)
    else
      flash[:notice] = "Error"
    end
  end

  def update
  end

  def destroy
  end

  private

  def plan_params
    params.require(:plan).permit(:name)
  end
end
