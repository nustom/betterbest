require 'rails_helper'

RSpec.describe GoalActivitiesController, :type => :controller do
  context "POST create" do
    before(:each) do
      @user = FactoryGirl.create(:user)
      @activity = FactoryGirl.create(:activity, user: @user)
      @goal = FactoryGirl.build(:goal, activity: @activity)
    end

    it "should create goal activity for signed in user" do
      sign_in @user
      expect{ post :create, goal_activity: FactoryGirl.build(:goal_activity).attributes.merge(goal_id: @goal.id) }.to change{ @user.goal_activities.count }.by(1)
    end

    it "should not create goal activity if user not sign in" do
      post :create, goal_activity: FactoryGirl.build(:goal_activity)
      expect(response.status).to eq(302)
    end

    it "should not create goal activity if count attribute invalid" do
      sign_in @user
      expect{ post :create, goal_activity: FactoryGirl.build(:goal_activity).attributes.merge(goal_id: @goal.id, count: nil) }.to change{ @user.goal_activities.count }.by(0)
    end
  end

end
