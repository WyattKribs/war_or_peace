require 'rspec'
require './lib/card.rb'
require './lib/deck.rb'
require './lib/player.rb'
require './lib/turn.rb'
require './lib/game.rb'

RSpec.describe Game do

it "tells you that the game can run" do
  card1 = Card.new(:heart, 'Jack', 11)
  card2 = Card.new(:heart, '10', 10)
  card3 = Card.new(:heart, '9', 9)
  card4 = Card.new(:diamond, 'Jack', 11)
  card5 = Card.new(:heart, '8', 8)
  card6 = Card.new(:diamond, 'Queen', 12)
  card7 = Card.new(:heart, '3', 3)
  card8 = Card.new(:diamond, '2', 2)
  deck1 = Deck.new ([card1, card2, card5, card8])
  deck2 = Deck.new ([card3, card4, card6, card7])
  player1 = Player.new("Megan", deck1)
  player2 = Player.new("Aurora", deck2)
  turn = Turn.new(player1, player2)
  winner = turn.winner
  turn.pile_cards
  turn.award_spoils(winner)
  end

  it "tells you that a player can win" do
    card1 = Card.new(:club, 'Ace', 14)
    card2 = Card.new(:club, '2', 2)
    card3 = Card.new(:club, '3', 3)
    card4 = Card.new(:club, '4', 4)
    card5 = Card.new(:club, '5', 5)
    card6 = Card.new(:club, '6', 6)
    card7 = Card.new(:club, '7', 7)
    card8 = Card.new(:club, '8', 8)
    card9 = Card.new(:club, '9', 9)
    card10 = Card.new(:club, '10', 10)
    card11 = Card.new(:club, 'Jack', 11)
    card12 = Card.new(:club, 'Queen', 12)
    card13 = Card.new(:club, 'King', 13)
    card14 = Card.new(:heart, 'Ace', 14)
    card15 = Card.new(:heart, '2', 2)
    card16 = Card.new(:heart, '3', 3)
    card17 = Card.new(:heart, '4', 4)
    card18 = Card.new(:heart, '5', 5)
    card19 = Card.new(:heart, '6', 6)
    card20 = Card.new(:heart, '7', 7)
    card21 = Card.new(:heart, '8', 8)
    card22 = Card.new(:heart, '9', 9)
    card23 = Card.new(:heart, '10', 10)
    card24 = Card.new(:heart, 'Jack', 11)
    card25 = Card.new(:heart, 'Queen', 12)
    card26 = Card.new(:heart, 'King', 13)
    card27 = Card.new(:spade, 'Ace', 14)
    card28 = Card.new(:spade, '2', 2)
    card29 = Card.new(:spade, '3', 3)
    card30 = Card.new(:spade, '4', 4)
    card31 = Card.new(:spade, '5', 5)
    card32 = Card.new(:spade, '6', 6)
    card33 = Card.new(:spade, '7', 7)
    card34 = Card.new(:spade, '8', 8)
    card35 = Card.new(:spade, '9', 9)
    card36 = Card.new(:spade, '10', 10)
    card37 = Card.new(:spade, 'Jack', 11)
    card38 = Card.new(:spade, 'Queen', 12)
    card39 = Card.new(:spade, 'King', 13)
    card40 = Card.new(:diamond, 'Ace', 14)
    card41 = Card.new(:diamond, '2', 2)
    card42 = Card.new(:diamond, '3', 3)
    card43 = Card.new(:diamond, '4', 4)
    card44 = Card.new(:diamond, '5', 5)
    card45 = Card.new(:diamond, '6', 6)
    card46 = Card.new(:diamond, '7', 7)
    card47 = Card.new(:diamond, '8', 8)
    card48 = Card.new(:diamond, '9', 9)
    card49 = Card.new(:diamond, '10', 10)
    card50 = Card.new(:diamond, 'Jack', 11)
    card51 = Card.new(:diamond, 'Queen', 12)
    card52 = Card.new(:diamond, 'King', 13)
    deck1 = Deck.new ([card1, card2, card5, card8])
    deck2 = Deck.new ([card3, card4, card6, card7])
    player1 = Player.new("Megan", deck1)
    player2 = Player.new("Aurora", deck2)
    turn = Turn.new(player1, player2)
    winner = turn.winner
    turn.pile_cards
    turn.award_spoils(winner)
  end

end
