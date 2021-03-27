# PROJECT NOTES

## MODELS

## Deck

    - attributes: name
    - has_many :cards

## Card

    - attributes: front, back
    - belongs_to :deck

## User Interface

- When user first loads webpage, they see a list of decks.
- User clicks on deck and sees the first card on the deck.
- User clicks on the card to flip it to the back.
- User will click the next arrow to see the next card and the back arrow to see previous card.
- User can create a new card on a deck and that card will be added to the end of the deck.

## AJAX/ FETCH REQUESTS

- READ Decks(1st request) => GET => "localhost:3000/decks"
- READ Card show page(2nd request) => GET => "localhost:3000/cards/id" (is this going to be a nested url under decks????)
- CREATE a new card(3rd request) => POST => "localhost:3000/cards/new"

## Set Up Plan

PS: build one model/ controller at a time up until fetch request and then move to next model!!!

1. Set up backend

   1. table for decks
   2. model class and associations for deck
   3. create seed data
   4. set up controller for decks rendering JSON(INDEX)
   5. set up serialization
   6. table for cards
   7. model class and associations for card
   8. create seed data
   9. set up controller for cards rendering JSON(SHOW & CREATE)
   10. set up serialization

2. set up front end
   1. set up index.html broilerplate.
      1. 2 divs
   2. set up class constructor for decks
   3. manipulate DOM to display all decks.
   4. set up class constructor for cards.
   5. manipulate DOM to display card belonging to deck.

## STRETCH GOALS

    - DELETE request for cards
    - search bar
