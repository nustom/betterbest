require 'rails_helper'

RSpec.describe Goal, :type => :model do
  context 'validate presence of' do
    before(:each) do
      @goal = FactoryGirl.build(:goal)
      @goal.save
    end

    subject { @goal }
    it { should validate_presence_of(:activity_id) }
    it { should validate_presence_of(:count) }
    it { should validate_presence_of(:period) }
    it { should validate_presence_of(:month_of_period) }
    it { should validate_presence_of(:year_of_period) }
  end

  context 'validate numericality of' do
    before(:each) do
      @goal = FactoryGirl.build(:goal)
      @goal.save
    end

    subject { @goal }

    it { should validate_numericality_of(:count) }
  end

end

