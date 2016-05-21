
class Player

  VERSION = "Default Ruby folding player"

  def bet_request(game_state)
  	my_cards = 0
  	game_state['players'].each do |player|
  	  if player['name'] == 'Sid'
        player['hole_cards'].each do |card|
          case card.values.first
          when "K"
          	my_cards += 12
          when "Q"
          	my_cards += 11
          when "A"
            my_cards += 10
          else
            my_cards += card.values.first.to_i
          end
        end
      end
  	end
  	community_cards = 0
  	game_state['community_cards'].each do |card|
	  case card.values.first
	  when "K"
	  	community_cards += 12
	  when "Q"
	  	community_cards += 11
	  when "A"
	    community_cards += 10
	  else
	    community_cards += card.values.first.to_i
	  end
  	end
  	output = rand(30) + my_cards
  	p "My cards: #{my_cards}"
  	p "Community cards: #{community_cards}"
  	p "Output: #{output}"
    return output
  end

  def showdown(game_state)

  end
end
