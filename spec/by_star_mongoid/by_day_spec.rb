require "spec_helper.rb"
describe "today" do
  before :each do
    [:today,:yesterday,:tomorrow].each{|u| create_list(u,@i = 2)}
  end

  context "today" do
    it "I should get users created today" do
      User.today.count.should == @i
    end
  end

  context "yesterday" do
    it "I should get users created yesterday" do
      User.yesterday.count.should == @i
    end
  end

  context "tomorrow" do
    it "I should get users created tomorrow" do
      User.yesterday.count.should == @i
    end
  end

  context "by day" do
    it "I have a time whose type is Time" do
      User.by_day(Time.now).count.should == @i
    end

    it "I have a time whose type is Date" do
      User.by_day(Date.today).count.should == @i
    end

    it "I have a time whose type is String" do
      User.by_day(Date.today.to_s).count.should == @i
    end
  end
end

