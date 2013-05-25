class AmexCard < CreditCard
  def legit?
    /^(34|37)\d{13}$/ =~ @number
  end

  def to_s
    "AMEX"
  end
end