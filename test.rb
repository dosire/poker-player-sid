#!/usr/bin/env ruby

# while :; do clear; ./test.rb; sleep 2; done

require_relative "player.rb"
require 'json'

player = Player.new

file = File.read('game_state.json')

game_state = JSON.parse(file)

p player.bet_request(game_state)

