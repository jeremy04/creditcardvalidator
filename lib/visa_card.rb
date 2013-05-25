class VisaCard < CreditCard
  def legit?
    /^4(\d{12}|\d{15})$/ =~ @number
  end

  def to_s
    "VISA"
  end
end