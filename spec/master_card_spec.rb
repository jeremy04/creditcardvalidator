require "rspec"

require File.dirname(__FILE__) + '/../lib/credit_card'
require File.dirname(__FILE__) + '/../lib/master_card'


describe "MasterCard" do
  context "check if the number is a legitimate MasterCard card" do
    it "should return 0 if it begins with 5 and is 16 characters in length" do
      credit_card = MasterCard.new("5105105105105100")
      credit_card.legit?.should == 0
    end

    it "should return nil if its not valid" do
      credit_card = MasterCard.new("478282246310005")
      credit_card.legit?.should be_nil
    end

  end
end
