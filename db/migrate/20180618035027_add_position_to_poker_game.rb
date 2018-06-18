class AddPositionToPokerGame < ActiveRecord::Migration[5.1]
  def change
    add_column :poker_games, :position, :text
  end
end
