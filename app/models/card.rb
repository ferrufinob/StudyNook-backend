class Card < ApplicationRecord
  belongs_to :deck

  def deck_name
    self.deck.name
  end
end
