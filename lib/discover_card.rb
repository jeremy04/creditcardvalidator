class DiscoverCard < CreditCard
  def legit?
    /^6011\d{12}$/ =~ @number
  end

  def to_s
    "Discover"
  end
end