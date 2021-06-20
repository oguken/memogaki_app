class PlansController < ApplicationController
  def create
    plan = Plan.create(plan_params)
    redirect_to "/memogakis/#{plan.memogaki.id}"
  end

  private
  def plan_params
    params.require(:plan).permit(:text).merge(user_id: current_user.id, memogaki_id: params[:memogaki_id])
  end
end
