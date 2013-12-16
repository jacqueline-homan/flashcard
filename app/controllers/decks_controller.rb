class DecksController < ApplicationController
  before_filter :authenticate
  
  def index
  	@decks = current_user.decks # Instance variables in controllers --> instance variables in view
  end

  def show
  	@deck = Deck.find(params[:id])
    @cards = @deck.cards
  end

  def new
  	@deck = Deck.new
  end

  def create
  	@deck = Deck.new(params[:deck]) # Why isn't the arg inside the params hash with indifferent access ":name" instead of ":deck"?
  	@deck.save
  	redirect_to decks_path
  end

  def edit
  	@deck = Deck.find(params[:id])
  end

  def update
  	@deck = Deck.find(params[:id])
  	@deck.update_attributes(params[:deck])
  	redirect_to @deck
  end

  def destroy
  	@deck = Deck.find(params[:id])
  	@deck.destroy
  	redirect_to decks_path
  end
end