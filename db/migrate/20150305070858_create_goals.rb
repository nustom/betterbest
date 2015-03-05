class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :activity_id
      t.integer :count
      t.datetime :period
      t.integer :month_of_period
      t.integer :year_of_period

      t.timestamps
    end
  end
end
