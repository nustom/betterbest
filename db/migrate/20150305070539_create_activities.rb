class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :user_id
      t.string :unit_of_measurement
      t.string :category
      t.string :sub_category
      t.integer :range_low
      t.integer :range_high
      t.text :descriptions

      t.timestamps
    end
  end
end
