module Items
  module UpdateSellInConcern

    def update_sell_in!
      self.item.sell_in -= 1
      self
    end
  end
end
