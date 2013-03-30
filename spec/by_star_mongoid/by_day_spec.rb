require "spec_helper.rb"
describe "today" do

  days = [:today,:yesterday,:tomorrow]
  before :each do
     @users = create_list(:user,10)
  end

  days.each do |time|
    context "#{time}" do
      it "I should get users created #{time}" do
	User.send(time).count.should == 1
      end
    end
  end

  context "by day" do
    it "when the type of arg is Time" do
      User.by_day(Time.now).count.should == @i
    end

    it "when the type of arg is Date" do
      User.by_day(Date.today).count.should == @i
    end

    it "when the type of arg is String" do
      User.by_day(Date.today.to_s).count.should == @i
    end

    it "when the arg is more than one" do
      User.by_day(Date.today.to_s,2).count.should == @i
    end

    it "should not include users created at Date.tomorrow.to_time" do
      create(:user,created_at: Date.tomorrow.to_time)
      User.by_day(Date.today).count.should == @i
    end

    it "should include users created at Time.now.end_of_day" do
      create(:user,created_at: Date.today.to_time)
      User.by_day(Date.today).count.should == @i + 1
    end

    it "when the arg is more than one,should raise error" do
     lambda {User.by_day("test")}.should raise_error
    end
  end
end

