class Activity < ActiveRecord::Base
  belongs_to :user
  has_many :goals, dependent: :destroy

end