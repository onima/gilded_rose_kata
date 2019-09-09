require_relative '../../../models/items/boosted_strengthening_item'

class BoostedStrengtheningItemKind
  def self.seek_item_class(name:)
    { BoostedStrengtheningItem => 'Backstage passes to a TAFKAL80ETC concert' }.key(name)
  end
end
