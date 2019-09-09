require_relative '../../../models/items/normal_item'

class NormalItemKind
  def self.seek_item_class(name:)
    NormalItem
  end
end
