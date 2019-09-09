require_relative '../../../models/items/conjured_item'

class ConjuredItemKind
  def self.seek_item_class(name:)
    name.start_with?('Conjured') ? ConjuredItem : nil
  end
end
