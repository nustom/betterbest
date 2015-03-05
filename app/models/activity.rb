class Activity < ActiveRecord::Base
  has_many :goals, dependent: :destroy

end