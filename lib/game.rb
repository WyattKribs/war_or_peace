require './lib/card.rb'
require './lib/deck.rb'
require './lib/player.rb'
require './lib/turn.rb'
class Game
  attr_reader :turn_count, :player1, :player2
  def initialize (player1, player2)
    @turn_count = 1
    @player1 = player1
    @player2 = player2

  def start
    until @player1.has_lost? || @player2.has_lost? || @turn_count == 1000001
      turn = Turn.new(@player1, @player2)
      winner = turn.winner
      type = turn.type
      turn.pile_cards
      turn.award_spoils(winner)


      if type == :basic
          p "Turn #{@turn_count}:"
        p "Basic - #{winner.name} won 2 cards"

      elsif type == :war
          p "Turn #{@turn_count}:"
        p "War - #{winner.name} won 6 cards"

      elsif type == :mutually_assured_destruction
          p "Turn #{@turn_count}:"
        p "Mutually assured destruction - 6 cards removed"
      end
        @turn_count += 1
    end
      if turn.player2.has_lost?
        p "#{turn.player1.name} has won!"

    elsif turn.player1.has_lost?
        p "#{turn.player2.name} has won!"

    elsif @turn_count == 1000001
      p "DRAW"
      end
    end
  end
end
