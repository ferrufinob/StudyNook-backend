class Deck < ApplicationRecord
  has_many :cards

  def card_count
    self.cards.count
  end
end
