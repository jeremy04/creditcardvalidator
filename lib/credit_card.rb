class CreditCard
  attr_reader :number

  def initialize(number)
    @number = number.gsub!(/\s*/,"")
  end

  def legit?
    false
  end

  def valid?
    luhn_algorithm(@number)
  end

  private

  def luhn_algorithm(number)
    digits = number.split(//).map(&:to_i)
    checksum = digits.pop
    digits = digits.reverse.map.with_index do |value,index|
      if index % 2 == 0
        doubled = value * 2
        if doubled > 9 # double digit doubles need to be split
          doubled.to_s.split(//).map(&:to_i)
        else
          doubled
        end
      else
        value
      end
    end
    full_digits = digits.flatten + [checksum]
    full_digits.inject(:+) % 10 == 0
  end

end
