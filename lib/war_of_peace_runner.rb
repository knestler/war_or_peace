require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

  #Create 52 Cards (A standard deck)
  standard_deck = [
    card1 = Card.new(:heart, '2', 2),
    card2 = Card.new(:heart, '3', 3),
    card3 = Card.new(:heart, '4', 4),
    card4 = Card.new(:heart, '5', 5),
    card5 = Card.new(:heart, '6', 6),
    card6 = Card.new(:heart, '7', 7),
    card7 = Card.new(:heart, '8', 8),
    card8 = Card.new(:heart, '9', 9),
    card9 = Card.new(:heart, '10', 10),
    card10 = Card.new(:heart, 'Jack', 11),
    card11 = Card.new(:heart, 'Queen', 12),
    card12 = Card.new(:heart, 'King', 13),
    card13 = Card.new(:heart, 'Ace', 14),
    card14 = Card.new(:club, '2', 2),
    card15 = Card.new(:club, '3', 3),
    card16 = Card.new(:club, '4', 4),
    card17 = Card.new(:club, '5', 5),
    card18 = Card.new(:club, '6', 6),
    card19 = Card.new(:club, '7', 7),
    card20 = Card.new(:club, '8', 8),
    card21 = Card.new(:club, '9', 9),
    card22 = Card.new(:club, '10', 10),
    card23 = Card.new(:club, 'Jack', 11),
    card24 = Card.new(:club, 'Queen', 12),
    card25 = Card.new(:club, 'King', 13),
    card26 = Card.new(:club, 'Ace', 14),
    card27 = Card.new(:spade, '2', 2),
    card28 = Card.new(:spade, '3', 3),
    card29 = Card.new(:spade, '4', 4),
    card30 = Card.new(:spade, '5', 5),
    card31 = Card.new(:spade, '6', 6),
    card32 = Card.new(:spade, '7', 7),
    card33 = Card.new(:spade, '8', 8),
    card34 = Card.new(:spade, '9', 9),
    card35 = Card.new(:spade, '10', 10),
    card36 = Card.new(:spade, 'Jack', 11),
    card37 = Card.new(:spade, 'Queen', 12),
    card38 = Card.new(:spade, 'King', 13),
    card39 = Card.new(:spade, 'Ace', 14),
    card40 = Card.new(:diamond, '2', 2),
    card41 = Card.new(:diamond, '3', 3),
    card42 = Card.new(:diamond, '4', 4),
    card43 = Card.new(:diamond, '5', 5),
    card44 = Card.new(:diamond, '6', 6),
    card45 = Card.new(:diamond, '7', 7),
    card46 = Card.new(:diamond, '8', 8),
    card47 = Card.new(:diamond, '9', 9),
    card48 = Card.new(:diamond, '10', 10),
    card49 = Card.new(:diamond, 'Jack', 11),
    card50 = Card.new(:diamond, 'Queen', 12),
    card51 = Card.new(:diamond, 'King', 13),
    card52 = Card.new(:diamond, 'Ace', 14),
  ]
 
#Put those card into two Decks (some randomness would be nice here!)
  shuffled_deck = standard_deck.shuffle

  deck1 = Deck.new([])
  deck2 = Deck.new([])
  
  26.times do 
    deck1.cards << shuffled_deck.first
    shuffled_deck.shift
    deck2.cards << shuffled_deck.first
    shuffled_deck.shift
  end
  
#Create two players with the Decks you created  
  player1 = Player.new("Megan", deck1)
  player2 = Player.new("Aurora", deck2)

  # require 'pry'; binding.pry
#Start the game using a new method called start
p "Welcome to War! (or Peace) This game will be played with 52 cards."
p "The players today are Megan and Aurora."
p "Type 'GO' to start the game!"
p "------------------------------------------------------------------"
start = gets.chomp
  if start.upcase == 'GO'

    loop do
    turn = Turn.new(player1, player2)
    turn.winner
    turn.pile_cards
    turn.award_spoils
    end

  end

#   # else 
#   #   return "Goodbye"
#   end 


# BASIC  - "Turn #{1}: #{winner} won 2 cards"
# WAR - "Turn #{2}: WAR - #{winner} won 6 cards"
# MUTUALLY - "Turn #{3}: *mutually assured destruction* 6 cards removed from play"
# ...
# ...
# ...
# Turn 9324: #{Aurora} won #{2} cards"
# "*~*~*~* #{Aurora} has won the game! *~*~*~*""
# #   end 