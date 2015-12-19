
BASE = 8
DIGITS = %w(0 1 2 3 4 5 6 7)
# class Octal converts octal value to decimal
class Octal
  def initialize(value)
    @octal = value.split('').reverse
    @decimal = 0
  end

  def to_decimal
    if invalid?
      @decimal = 0
    else
      @octal.each_with_index { |value, index| @decimal += (value.to_i * (BASE**index)) }
      @decimal
    end
  end

  def invalid?
    status = true
    @octal.each do |value|
      if status = !DIGITS.include?(value)
        return status
      end
    end
    status
  end
end
