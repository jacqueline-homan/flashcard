class Deck < ActiveRecord::Base
  attr_accessible :name #allows us to do mass-assignment for 'name' of new decks
end