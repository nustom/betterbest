require 'rails_helper'

RSpec.describe GoalActivity, :type => :model do
  context 'validate presence of' do
    before(:each) do
      @goal_activity = FactoryGirl.build(:goal_activity)
      @goal_activity.save
    end

    subject { @goal_activity }
    it { should validate_presence_of(:goal_id) }
    it { should validate_presence_of(:count) }
    it { should validate_presence_of(:period) }
  end

  context 'validate numericality of' do
    before(:each) do
      @goal_activity = FactoryGirl.build(:goal_activity)
      @goal_activity.save
    end

    subject { @goal_activity }

    it { should validate_numericality_of(:count) }
  end
end
