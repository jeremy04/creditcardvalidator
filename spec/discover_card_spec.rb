require "rspec"

require File.dirname(__FILE__) + '/../lib/credit_card'
require File.dirname(__FILE__) + '/../lib/discover_card'


describe "DiscoverCard" do
  context "check if the number is a legitimate Discover card" do
    it "should return 0 if it begins with 6011 and is 16 characters in length" do
      credit_card = DiscoverCard.new("6011111111111117")
      credit_card.legit?.should == 0
    end

    it "should return nil if its not valid" do
      credit_card = DiscoverCard.new("6012111111111117")
      credit_card.legit?.should be_nil
    end

  end
end

