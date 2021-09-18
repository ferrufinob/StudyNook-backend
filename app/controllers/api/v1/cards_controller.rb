class Api::V1::CardsController < ApplicationController
  def index
    cards = Card.all
    render json: CardSerializer.new(cards)
  end

  def create
    card = Card.new(card_params)
    if card.save
      render json: CardSerializer.new(card)
    else
      render json: { errors: card.errors.full_messages.to_sentence }
    end
  end

  def update
    card = Card.find_by_id(params[:id])
    if card.update(card_params)
      render json: CardSerializer.new(card)
    else
      render json: { error: card.errors.full_messages.to_sentence }
    end
  end

  def destroy
    card = Card.find_by_id(params[:id])
    if card.destroy
      render json: { message: "successfully deleted" }
    end
  end

  private

  def card_params
    params.require(:card).permit(:front, :back, :deck_id)
  end
end
