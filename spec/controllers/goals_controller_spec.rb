require 'rails_helper'

RSpec.describe GoalsController, :type => :controller do

  context "POST create" do
    before(:each) do
      @user = FactoryGirl.create(:user)
      @activity = FactoryGirl.create(:activity, user: @user)
    end

    it "should create goal for signed in user" do
      sign_in @user
      expect{ post :create, goal: FactoryGirl.build(:goal).attributes.merge(period: '03-2015', activity_id: @activity.id, count: 1) }.to change{ @user.goals.count }.by(1)
    end

    it "should not create goal if user not sign in" do
      post :create, goal: FactoryGirl.build(:goal).attributes.merge(period: '03-2015')
      expect(response.status).to eq(302)
    end

    it "should not create goal if count attribute invalid" do
      sign_in @user
      expect{ post :create, goal: FactoryGirl.build(:goal).attributes.merge(period: '03-2015', activity_id: @activity.id), count: nil }.to change{ @user.goals.count }.by(0)
    end
  end

end
