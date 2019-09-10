require_relative '../../quality_coefficient'

module Items
  module UpdateQualityConcern

    HIGHEST_QUALITY_VALUE = 50
    LOWEST_QUALITY_VALUE = 0

    def update_quality!
      self.item.quality += quality_coefficient
      self.item.quality = LOWEST_QUALITY_VALUE if self.item.quality < LOWEST_QUALITY_VALUE
      self.item.quality = HIGHEST_QUALITY_VALUE if self.item.quality > HIGHEST_QUALITY_VALUE
      self
    end

    private

    def quality_coefficient
      QualityCoefficient.calcul(
        sell_in: self.item.sell_in,
        coefficient_type: self.coefficient
      )
    end
  end
end
