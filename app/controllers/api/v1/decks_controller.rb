class Api::V1::DecksController < ApplicationController
  def index
    decks = Deck.all
    render json: DeckSerializer.new(decks)
  end

  def create
    deck = Deck.new(card_params)
    if deck.save
      render json: Deck.Serializer.new(card)
    else
      render json: { errors: deck.errors.full_messages.to_sentence }
    end
  end
end
