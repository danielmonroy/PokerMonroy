class CreatePokerPlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :poker_players do |t|
      t.string :name
      t.string :nickname
      t.string :title

      t.timestamps
    end
  end
end
