class GoalsController < ApplicationController

  respond_to :html, :json
  def index
    @goals = current_goals
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

    def current_goals
      if params[:order].present?
        current_goals = current_user.goals.order("#{sort_goals_table(params[:order]["0"][:column])} #{params[:order]["0"][:dir] || "desc"}").where(month_of_period: DateTime.now.month)
        current_goals = current_goals.page(page).per(per_page)
      end
    end

    def page
      params[:start].to_i/per_page + 1
    end

    def per_page
      params[:length].to_i > 0 ? params[:length].to_i : 10
    end

    def sort_goals_table column_id
      columns = %w(name unit_of_measurement count)
      column_id.present? ? columns[column_id.to_i] : columns[0]
    end
end