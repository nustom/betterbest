class Goal < ActiveRecord::Base
  belongs_to :activity
  has_many :goal_activities, dependent: :destroy
end