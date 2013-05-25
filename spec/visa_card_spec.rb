require "rspec"

require File.dirname(__FILE__) + '/../lib/credit_card'
require File.dirname(__FILE__) + '/../lib/visa_card'


describe "VisaCard" do
  context "check if the number is a legitimate Visa card" do
    it "should return 0 if it begins with 4 and is 13 characters in length" do
      credit_card = VisaCard.new("4123456789012")
      credit_card.legit?.should == 0
    end

    it "should return 0 if it begins with 4 and is 16 characters in length" do
      credit_card = VisaCard.new("4123456789123456")
      credit_card.legit?.should == 0
    end

    it "should return nil if its not valid" do
      credit_card = VisaCard.new("6012111111111117")
      credit_card.legit?.should be_nil
    end

  end
end

