class Deck < ActiveRecord::Base
  has_many :cards
  belongs_to :user
  attr_accessible :name #allows us to do mass-assignment for 'name' of new decks
end