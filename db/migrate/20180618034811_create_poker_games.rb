class CreatePokerGames < ActiveRecord::Migration[5.1]
  def change
    create_table :poker_games do |t|
      t.datetime :game_date
      t.references :home, foreign_key: true
      t.string :type
      t.float :fee

      t.timestamps
    end
  end
end
