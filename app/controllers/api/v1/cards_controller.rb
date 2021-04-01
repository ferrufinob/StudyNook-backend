class Api::V1::CardsController < ApplicationController
  def index
    # cards = Deck.find_by(id: params[:deck_id]).cards
    cards = Card.all
    render json: CardSerializer.new(cards)
  end

  def show
    card = Card.find_by_id(params[:id])
    render json: CardSerializer.new(card)
  end

  def create
    card = Card.new(card_params)
    if card.save
      render json: CardSerializer.new(card)
    else
      render json: { error: card.errors.full_messages }
    end
  end

  def update
    card = Card.find_by_id(params[:id])
    if card.update(card_params)
      render json: CardSerializer.new(card)
    else
      render json: { error: card.errors.full_messages }
    end
  end

  private

  def card_params
    params.require(:card).permit(:front, :back, :deck_id)
  end
end
