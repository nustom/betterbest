class AddPeriodToGoalActivities < ActiveRecord::Migration
  def change
    add_column :goal_activities, :period, :datetime
  end
end
