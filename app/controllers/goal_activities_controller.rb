class GoalActivitiesController < ApplicationController
  def index
  end

  def new
    @goal_activity = GoalActivity.new
  end

  def create
    params = goal_activity_params

    @goal_activity = GoalActivity.new(params)

    respond_to do |format|
      if @goal_activity.save
        format.html do
          flash[:notice] = I18n.t('goal_activities.messages.created_success')
          redirect_to action: 'index'
        end
      else
        format.html { render :new }
      end
    end
  end

  private
  def goal_activity_params
    params.require(:goal_activity).permit(:goal_id, :count, :period)
  end
end