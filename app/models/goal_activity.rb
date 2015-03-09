class GoalActivity < ActiveRecord::Base
  belongs_to :goal

  validates :goal_id, presence: true
  validates :count, numericality: { only_integer: true, :greater_than => 0, :less_than => 100 }, presence: true
  validates :period, presence: true

end