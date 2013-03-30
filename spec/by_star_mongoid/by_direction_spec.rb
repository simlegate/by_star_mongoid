require "spec_helper.rb"
describe "by direction" do
  days = [:today,:yesterday,:tomorrow]

  before :each do
    days.each{|u| create_list(u,@i = 2)}
  end

  context "before" do
    it "should have 4 user created before now" do
      User.before.count.should == 2 * @i
    end

    it "should have 4 user created before now" do
      User.before.count.should == 2 * @i
    end
  end

  context "after" do
    it "should have 2 user created before now" do
      User.after.count.should == @i
    end
  end

end
