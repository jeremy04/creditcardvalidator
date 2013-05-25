class MasterCard < CreditCard
  def legit?
    /^5[1-5]\d{14}$/ =~ @number
  end

  def to_s
    "MasterCard"
  end
end