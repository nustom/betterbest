class CreateGoalActivities < ActiveRecord::Migration
  def change
    create_table :goal_activities do |t|
      t.integer :goal_id
      t.integer :count

      t.timestamps
    end
  end
end
