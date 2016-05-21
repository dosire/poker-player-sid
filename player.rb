
class Player

  VERSION = "Default Ruby folding player"

  def bet_request(game_state)
  	p game_state['players']
    return rand(30) + 30
  end

  def showdown(game_state)

  end
end
