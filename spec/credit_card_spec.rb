require "rspec"

require File.dirname(__FILE__) + '/../lib/credit_card'

describe "Credit Card" do

  context "it should validate the number with the Luhn algorithm" do

    it "validate true if it passes Luhn's algorithm" do
      credit_card = CreditCard.new("4408041234567893")
      credit_card.valid?.should be_true
    end

  end

end
