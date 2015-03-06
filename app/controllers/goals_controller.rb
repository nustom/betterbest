class GoalsController < ApplicationController

  def index
  end

  def new
    @goal = Goal.new
  end

  def create
    params = goal_params

    periods = params[:period].split("-")

    params[:period] = Date.new(periods[1].to_i, periods[0].to_i, 1)
    params[:month_of_period] = periods[0].to_i
    params[:year_of_period] = periods[1].to_i

    @goal = Goal.new(params)

    respond_to do |format|
      if @goal.save
        format.html do
          flash[:notice] = I18n.t('goals.messages.created_success')
          redirect_to action: 'index'
        end
      else
        format.html { render :new }
      end
    end
  end

  private
  def goal_params
    params.require(:goal).permit(:activity_id, :count, :period, :month_of_period, :year_of_period)
  end
end