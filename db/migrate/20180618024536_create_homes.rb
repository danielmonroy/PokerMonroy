class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :name
      t.references :poker_player, foreign_key: true

      t.timestamps
    end
  end
end
