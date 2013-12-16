class Deck < ActiveRecord::Base
  has_many :cards
  attr_accessible :name #allows us to do mass-assignment for 'name' of new decks
end