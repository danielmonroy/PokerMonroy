class CreateHasPlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :has_players do |t|
      t.references :poker_game, foreign_key: true
      t.references :poker_player, foreign_key: true

      t.timestamps
    end
  end
end
