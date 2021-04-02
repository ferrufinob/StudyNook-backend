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
data_algos = Deck.create(name: "Data Structures & Algorithms")

Card.create(front: "this", back: "Inside a function, this is the Object that represents the functions execution context. this depends on where the method is called or used, not where it is defined.", deck_id: javascript.id)
Card.create(front: "Describe the directory of auto-generated files that makes up the structure of a rails app", back: "14 folders and files: App, Bin, config, config.ru, db, gemfile/lock, lib, log, public, rakefile, readme, test, tmp and vendor", deck_id: rails.id)
Card.create(front: "What is the purpose of routing?", back: "Routing decides which controller receives which requests", deck_id: rails.id)
Card.create(front: "What is the controller's purpose?", back: "To receive specific requests for the app", deck_id: rails.id)
Card.create(front: "Local Variable Conventio", back: "Variable names should start with a lowercase letter and words should be separated by underscores, like counter and masterful_method", deck_id: ruby.id)
Card.create(front: ".split()", back: " Method. takes in a string and returns an array. If we pass it a bit of text in parentheses, .split will divide the string wherever it sees that bit of text, called a delimiter. For example,Example:text.split(',') ==> tells Ruby to split up the string text whenever it sees a comma.", deck_id: ruby.id)
Card.create(front: "big O notations best to worst runtimes", back: "1
log2N
N
Nlog2N
N ^ 2
N ^ 3
2 ^ N", deck_id: data_algos.id)

Card.create(front: "data type", back: "Data types define particular characteristics of data used in software programs and inform the compilers about predefined attributes required by specific variables or associated data objects.", deck_id: data_algos.id)
