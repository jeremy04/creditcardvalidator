require "rspec"

require File.dirname(__FILE__) + '/../lib/credit_card'
require File.dirname(__FILE__) + '/../lib/amex_card'


describe "AmexCard" do
  context "check if the number is a legitimate AMEX card" do
    it "should return 0 if it begins with 34 and is 15 characters in length" do
      credit_card = AmexCard.new("348282246310005")
      credit_card.legit?.should == 0
    end

    it "should return 0 if it begins with 37 and is 15 characters in length" do
      credit_card = AmexCard.new("378282246310005")
      credit_card.legit?.should == 0
    end

    it "should return nil if its not valid" do
      credit_card = AmexCard.new("478282246310005")
      credit_card.legit?.should be_nil
    end

  end
end