class HasPlayer < ApplicationRecord
  belongs_to :poker_game
  belongs_to :poker_player
end
