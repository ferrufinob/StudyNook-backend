# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ruby = Deck.create(name: "Ruby")
rails = Deck.create(name: "Rails")
javascript = Deck.create(name: "JavaScript")
computer_science = Deck.create(name: "Computer Science")

Card.create(front: "this", back: "Inside a function, this is the Object that represents the functions execution context. this depends on where the method is called or used, not where it is defined.", deck_id: javascript.id)
