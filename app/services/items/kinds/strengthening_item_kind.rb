require_relative '../../../models/items/strengthening_item'

class StrengtheningItemKind
  def self.seek_item_class(name:)
    { StrengtheningItem => 'Aged Brie' }.key(name)
  end
end
