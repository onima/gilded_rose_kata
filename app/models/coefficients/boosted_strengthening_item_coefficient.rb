class BoostedStrengtheningItemCoefficient

  attr_reader :sell_in

  def initialize(sell_in:)
    @sell_in = sell_in
  end

  def coefficient
    return 2 if sell_in <= 10 && sell_in >= 6
    return 3 if sell_in <= 5 && sell_in >= 1
    1
  end
end
