class Goal < ActiveRecord::Base
  belongs_to :activity
  has_many :goal_activities, dependent: :destroy

  validates :activity_id, presence: true
  validates :count, numericality: { only_integer: true, :greater_than => 0, :less_than => 100 }, presence: true
  validates :period, presence: true
  validates :month_of_period, presence: true
  validates :year_of_period, presence: true
end