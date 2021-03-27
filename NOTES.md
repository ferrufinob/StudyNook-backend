# PROJECT NOTES

## MODELS

### Deck

    - attributes: name
    - has_many :cards

### Card

    - attributes: front, back
    - belongs_to :deck

## User Interface

- When user first loads webpage, they see a list of decks.
- User clicks on deck and sees the first card on the deck.
- User clicks on the card to flip it to the back.
- User will click the next arrow to see the next card and the back arrow to see previous card.
- User can create a new card on a deck and that card will be added to the end of the deck.

## AJAX/ FETCH REQUESTS

- READ Decks(1st request) => GET => "localhost:3000/api/v1/decks"
- READ Card show page(2nd request) => GET => "localhost:3000/api/v1/cards/id" (is this going to be a nested url under decks????)
- CREATE a new card(3rd request) => POST => "localhost:3000/api/v1/cards/new"

## Set Up Plan

PS: build one model/ controller at a time up until fetch request and then move to next model!!!

### Set up backend

[x] table for decks

[x] model class and associations for deck

[x] create seed data

[x] set up controller for decks rendering JSON(INDEX)

[x] set up serialization

[x] table for cards

[x] model class and associations for card

[x] create seed data

[ ] set up controller for cards rendering JSON(SHOW & CREATE)

[ ] set up serialization

### Set up front end

[ ] set up index.html

[ ] first fetch request => decks(GET/INDEX)

[ ] set up class constructor for decks

[ ] manipulate DOM to display all decks(index).

[ ] second fetch request => cards(GET/SHOW)

[ ] set up class constructor for cards.

[ ] manipulate DOM to display an individual card

[ ] make functions that can dispay next, previous, and flip a card

[ ] third fetch request => card(POST/NEW)

[ ] can create a new card that also establishes relationship to the corresponding deck(fetch & can display created card)

[ ] Review code and remove unnecessary functions/clean up.

## STRETCH GOALS/Future Goals

    - DELETE request for cards
    - PATCH request for cards
    - search bar
    - dark mode
    - user model
