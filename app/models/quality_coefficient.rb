require_relative 'coefficients/normal_item_coefficient'
require_relative 'coefficients/conjured_item_coefficient'
require_relative 'coefficients/strengthening_item_coefficient'
require_relative 'coefficients/boosted_strengthening_item_coefficient'

class QualityCoefficient
  def self.calcul(sell_in:, coefficient_type:)
    sell_in <= 0 ? coefficient_type.coefficient * 2 : coefficient_type.coefficient
  end
end
