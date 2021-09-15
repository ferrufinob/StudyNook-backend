class Api::V1::DecksController < ApplicationController
  def index
    decks = Deck.all
    render json: DeckSerializer.new(decks)
  end

  def create
    deck = Deck.new(deck_params)
    if deck.save
      render json: DeckSerializer.new(deck)
    else
      render json: { errors: deck.errors.full_messages.to_sentence }
    end
  end

  def destroy
  deck = Deck.find_by_id(params[:id])
  if deck.destroy
    render json: { message: "successfully deleted" }
  end
end

  private

  def deck_params
    params.require(:deck).permit(:name)
  end
end
